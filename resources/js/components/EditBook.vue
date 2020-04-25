<!--
<template>
    <div>
        <h3 class="text-center">Edit Book</h3>
        <div class="row">
            <div class="col-md-6">
                <form @submit.prevent="updateBook">
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control" v-model="book.name">
                    </div>
                    <div class="form-group">
                        <label>Author</label>
                        <input type="text" class="form-control" v-model="book.author">
                    </div>
                    <button type="submit" class="btn btn-primary">Update Book</button>
                </form>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
    export default {
        data() {
            return {
                book: {}
            }
        },
        created() {
            axios
                .get(`http://127.0.0.1:8000/api/book/edit/${this.$route.params.id}`)
                .then((response) => {
                    this.book = response.data[0];
                });
        },
        methods: {
            updateBook() {
                axios.post(`http://127.0.0.1:8000/api/book/update/${this.$route.params.id}`,this.book)
                    .then((response) => {
                        this.$router.push({name: 'home'});
                    });
            }
        }
    }
</script>

!-->

<template>
    <v-row justify="center" align="center">

        <v-form ref="form" v-model="valid" lazy-validation enctype="multipart/form-data">
         <div justify="center" class="info--text">
            <h1>Edit Book</h1>
        </div>
            <v-text-field v-model="name" :counter="3" :rules="nameRules" label="Book Name" required></v-text-field>
            <v-text-field v-model="author_name" :counter="15" :rules="author_nameRules" label="Author Name" required></v-text-field>
            <v-select v-model="select" :items="items" :rules="[v => !!v || 'Rating is required']" label="Rating" required></v-select>
            <v-textarea counter v-model="description"  label="Description" :rules="description_rules"></v-textarea>
            
            <v-file-input type="file"
              :rules="image_rules"
              accept="image/png, image/jpeg, image/bmp"
              prepend-icon="mdi-camera"
              label="Book Cover Photo"
              v-on:change="onImageChange"
              id="input"
            ></v-file-input>
            <v-img :src="asset('images/'+cover_image)" v-if="cover">
                <div class="fill-height bottom-gradient"></div>
            </v-img>
            <v-checkbox v-model="checkbox" :rules="[v => !!v || 'You must agree to continue!']" label="Do you agree?" required></v-checkbox>

            <v-btn :disabled="!valid" color="success" class="mr-4" @click.prevent="validate">
                Update
            </v-btn>

            <v-btn color="error" class="mr-4" @click="reset">
                Reset Form
            </v-btn>

            <v-btn color="warning" @click="resetValidation">
                Reset Validation
            </v-btn>
        </v-form>
    </v-row>
</template>

<script>
import axios from 'axios'
  export default {
    data: () => ({
      valid: true,
      cover: true,
      name: '',
      nameRules: [
        v => !!v || 'Name is required',
        v => (v && v.length >= 3) || 'Name must be over 3 characters',
      ],
    author_name: '',
      author_nameRules: [
        v => !!v || 'Author Name is required',
        v => (v && v.length <= 15) || 'Name must be less them 15 characters',
      ],
      description: '',
      description_rules: [
          v => !!v || 'Description is required',
          v => (v && v.length >= 20) || 'Name must be Over 20 characters',
          ],
      cover_image: '',
      image_rules: [
          v =>  !v || v.size < 20000000 || 'Book Cover size should be less than 20 MB!',
          ],
      select: null,
      items: [
        '1',
        '2',
        '2.5',
        '3',
        '3.5',
        '4',
        '4.5',
        '5',
      ],
      checkbox: false,
    }),

        created() {
            axios
                .get(`http://127.0.0.1:8000/api/book/edit/${this.$route.params.id}`)
                .then((response) => {
                    this.name = response.data[0].name;
                    this.author_name = response.data[0].author;
                    this.description = response.data[0].description;
                    this.select = response.data[0].rating;
                    this.cover_image = response.data[0].image;
                });
        },

    methods: {
             onImageChange(){
               this.cover_image = document.getElementById('input').files[0];
               this.cover = false
            },
      validate () {
        if(this.$refs.form.validate()){
                const config = {
                    headers: { 'content-type': 'multipart/form-data' }
                };
                let formData = new FormData();
                formData.append('name', this.name);
                formData.append('author', this.author_name);
                formData.append('rating', this.select);
                formData.append('description', this.description);
                formData.append('image', this.cover_image);
            axios.post(`http://127.0.0.1:8000/api/book/update/${this.$route.params.id}`, formData,config)
            .then(response => (
                this.$router.push({name: 'home'})
            ))
            .catch(error => console.log(error))
        }else{
            console.log('fail');
        }
      },
      reset () {
        this.$refs.form.reset()
      },
      resetValidation () {
        this.$refs.form.resetValidation()
      },
    },
  }
</script>

