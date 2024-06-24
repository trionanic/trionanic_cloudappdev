function Movie(props) {
	
	return ( 
	<div>
	<h3>
	{props.title + " " +   props.rating + " "   + props.release }
	</h3>
	</div>
	)
	
}
export default Movie;