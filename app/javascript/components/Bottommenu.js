import React from "react";
import PropTypes from "prop-types";

class Bottommenu extends React.Component{
	render(){
		return(	
			<div>		  
      	<ul className="icons">
        
        	<li className="icon">
          	<a href="/"><img className="iconimage homeimage" src="/home.png"/></a>  
        	</li>

        	<li className="icon">
          	<a href="/"><img className="iconimage homeimage" src="/home.png"/></a>
        	</li>

        	<li className="icon">
          	<a href="/"><img className="iconimage homeimage" src="/home.png"/></a>
        	</li>
          
        	<li className="icon">
          	<a href="/"><img className="iconimage clipimage" src="/clip.png"/></a>
        	</li>  

        	<li className="icon">
          	<a href="/profiles"><img className="iconimage menuimage" src="/menu.png"/></a>
        	</li>  
  
      	</ul>

      	<ul className="icons-name">

        	<li className="icon-name">
          	<a href="/">home</a>
        	</li>

        	<li className="icon-name">
          	<a href="/">home</a>
        	</li>

        	<li className="icon-name">
          	<a href="/">home</a>
        	</li>

        	<li className="icon-name">
          	<a href="/">clip</a>
        	</li>

        	<li className="icon-name">
          	<a href="/profiles">menu</a>
        	</li>

      	</ul>
        
      </div>  			
　　　	
			

			);
	}
}





export default Bottommenu;


