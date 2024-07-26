import {useState, useEffect} from 'react';
import axios from 'axios';
import Todo from './Todo'

function TodoList() {
	
	// define todolist as an empty array and setTodoList as its update method 
	const [todoList, setTodoList] = useState([]);
	
	// specifies behaviour to happen when the component is rendered
	// we define a function to fetch the data from the server and
	// put it into the todoList array
	// then we call that function
	
	useEffect(() =>  {
        async function fetchData() {		
		const response = await axios.get("http://3.93.135.162:3000/todos",
		{headers : {Accept: "application/json"}});
		
		console.log(response.data)
		setTodoList(response.data);
	}
    fetchData(); 
	},[] );  // empty brackets in 2nd argument of useEffect 
	         // means it will run only on the initial render
	
	return ( 
	<div>
	    <ul class="demo">
		{
			
			// map function iterates over an array
			// it takes an argument of a function that will be called for each Element
			// in the array. The function takes two arguments , i which is the current array element 
			// and index which is the index of the current element
			todoList.map(function(i,index) { 
			console.log(i);
			
			return (
			   <li key={index}>
			   <Todo title={i.title} completed={i.completed} />
			   </li> )
			    
			})
		}
		</ul>
	    
	</div>
	
	)
	
	/* const todoItems = todoList.map(todo =>
	 <li key={todo.id}>{todo.title} </li>	
	 );
	 
    return ( <ul> {todoItems}</ul> ) */
}
	

export default TodoList;
	
	