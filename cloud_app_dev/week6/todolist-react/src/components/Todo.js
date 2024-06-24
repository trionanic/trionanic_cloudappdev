function Todo(props) {
	
	return ( 
	<div>
	<h3>
	{props.completed ? "Completed: " + props.title:"To Be Completed:" + props.title }
	</h3>
	</div>
	)
	
}
export default Todo;