<template>
        <v-row v-if="books">
            <v-col cols="4" v-for="book in books" :key="book.id">
                <book-card :book="book" @deleteBook="deleteData"/>
            </v-col>
        </v-row>
        <v-row v-else>
            <v-col class="justify-center">
                <h2>There is No Books Avaiable </h2>
                <router-link :to="{name: 'add'}">Create New Book</router-link>
            </v-col>
        </v-row>
    <!-- </v-container> -->
</template>

<script>
import BookCard from './BookCard.vue';
import axios from 'axios';
    export default {
        components: {BookCard},
        data() {
            return {
                books: []
            }
        },
        created() {
            axios.get('http://127.0.0.1:8000/api/books')
                .then(response => {
                    this.books = response.data;
                });
        },
        methods: {
            deleteData(id) {
                axios.delete(`http://127.0.0.1:8000/api/book/delete/${id}`)
                    .then(response => {
                        let i = this.books.map(item => item.id).indexOf(id);
                        this.books.splice(i, 1)
                    });
            }
        }
    }
</script>