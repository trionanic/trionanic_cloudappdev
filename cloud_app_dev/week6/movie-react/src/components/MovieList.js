import {useState, useEffect} from 'react';
import axios from 'axios';
import Movie from './Movie'

function MovieList() {
	
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
	
	return ( 
	<div>
	    <ul>
		{
			
			// map function iterates over an array
			// it takes an argument of a function that will be called for each Element
			// in the array. The function takes two arguments , i which is the current array element 
			// and index which is the index of the current element
			movieList.map(function(i,index) { 
			console.log(i);
			
			return (
			   <li key={index}>
			    <Movie title={i.title} rating={i.rating} release={i.release} />
			  
			   </li> )
			    
			})
		}
		</ul>
	    
	</div>
	)
}
	

export default MovieList;
	
	