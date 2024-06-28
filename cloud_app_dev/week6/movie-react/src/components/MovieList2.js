import {useState, useEffect} from 'react';
import axios from 'axios';
import Movie from './Movie'

function MovieList2() {
	
	// define movieList as an empty array and setMovieList as its update method 
	const [movieList, setMovieList] = useState([]);
	
	// specifies behaviour to happen when the component is rendered
	// we define a function to fetch the data from the server and
	// put it into the movieList array
	// then we call that function
	
	useEffect(() =>  {
        async function fetchData() {		
		const response = await axios.get("http://localhost:4000/movies",
		{headers : {Accept: "application/json"}});
		
		console.log(response.data)
		setMovieList(response.data);
	}
    fetchData(); 
	},[] );  // empty brackets in 2nd argument of useEffect 
	         // means it will run only on the initial render
	
	const movieItems = movieList.map(movie =>
	 <li key={movie.id}>{movie.title} </li>	
	 );
	 
    return ( <ul> {movieItems}</ul>

);
	 
	 
	 
	
}
	

export default MovieList2;
	
	