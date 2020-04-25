<?php

namespace App\Http\Controllers;

use App\Book;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $books = Book::all()->toArray();
        if(count($books)>0){
        return array_reverse($books);
        }else{
            return response()->json([
                message=> "This is No Book Avabliable"
            ]);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }


    public function add(Request $request)
    {
        $imageName = time().'_'.$request->file('image')->getClientOriginalName();
        $request->file('image')->move(public_path('images'), $imageName);

        $book = new Book([
            'name' => $request->input('name'),
            'author' => $request->input('author'),
            'rating' => $request->input('rating'),
            'description' => $request->input('description'),
            'image' => $imageName
        ]);
        $book->save();

        return response()->json('The book successfully added');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function show(Book $book)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function edit(Book $id)
    {
        $book = Book::find($id);
        return response()->json($book);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $book = Book::find($id);
        if($request->file('image')){
            $image_path = public_path().'/images/'.$book->image;
            if(File::exists($image_path)) {
                File::delete($image_path);
            }
        $imageName = time().'_'.$request->file('image')->getClientOriginalName();
        $request->file('image')->move(public_path('images'), $imageName);
        $book->image = $imageName;
        $book->save();
        }
        $book->name = $request->input('name');
        $book->author = $request->input('author');
        $book->rating = $request->input('rating');
        $book->description = $request->input('description');
        $book->save();

        return response()->json('The book successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function destroy(Book $book)
    {
        //
    }

    public function delete($id)
    {
        $book = Book::find($id);
        $image_path = public_path().'/images/'.$book->image;
        if(File::exists($image_path)) {
            File::delete($image_path);
        }
        $book->delete();

        return response()->json('The book successfully deleted');
    }
    
}
