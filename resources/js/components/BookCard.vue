<template>
  <v-card
    class="mx-auto"
    max-width="374"
  >
    <v-img
      height="100%" width="100%"
      :src="asset('images/'+book.image)"
    ></v-img>

    <v-card-title class="justify-center">{{book.name}}</v-card-title>

    <v-card-text>
      <v-row
        align="center"
        class="mx-0"
      >
        <v-rating
          :value="parseFloat(book.rating)"
          color="amber"
          dense
          half-increments
          readonly
          size="16"
        ></v-rating>

        <div class="grey--text ml-4">{{book.rating}} (413) <span class="info--text">Rating</span></div>
      </v-row>

      <div class="my-4 subtitle-1">
            <span class="light-green--text">Author &spadesuit; {{book.author}}</span>
      </div>

      <div>{{book.description.substr(0,200)}}</div>
    </v-card-text>

    <v-divider class="mx-4"></v-divider>

    <v-card-actions>
      <router-link :to="{name: 'edit', params: { id: book.id }}">
      <v-btn class="white--text ml-2"
        color="deep-purple"
      >
      Edit
      </v-btn>
      </router-link>
      <v-spacer></v-spacer>
      <v-btn class="white--text mr-2"
        color="red"
        @click="bookDelete(book.id)"
      >
        Delete
      </v-btn>
    </v-card-actions>
  </v-card>
</template>

<script>
  export default {
      props: ['book'],
      name: 'BookCard',
    data() {
        return {
        };
    },

    methods: {
            bookDelete(id) {
                this.$emit('deleteBook',id);
            }
    },
  }
</script>