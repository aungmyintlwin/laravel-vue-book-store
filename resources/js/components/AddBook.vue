<template>
    <v-row justify="center" align="center">

        <v-form ref="form" v-model="valid" lazy-validation enctype="multipart/form-data">
         <div justify="center" class="info--text">
            <h1>Add New Book</h1>
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
            <v-checkbox v-model="checkbox" :rules="[v => !!v || 'You must agree to continue!']" label="Do you agree?" required></v-checkbox>

            <v-btn :disabled="!valid" color="success" class="mr-4" @click.prevent="validate">
                Add New Book
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
          v => !!v || 'Book Cover is required',
          v => !v || v.size < 20000000 || 'Book Cover size should be less than 20 MB!',
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

    methods: {
             onImageChange(){
               this.cover_image = document.getElementById('input').files[0];
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
            axios.post('http://127.0.0.1:8000/api/book/add', formData,config)
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
