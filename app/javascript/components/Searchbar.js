import React from "react";
import PropTypes from "prop-types";

class Searchbar extends React.Component{
	constructor(props){
		super(props);
		this.state={text:"施設・会社名を検索"}
	}

	render(){
		return(
			<div>
        <div>
        
          <form action="/publishers" method="get">
            <input 
              className="search-box"
              type="search" 
              name="search" 
              value={this.state.text}
              onChange={(e)=>this.setState({text: e.target.value})} />
          </form>  
        </div>  
    
      	<div className="cancel-button">
        	<a href="/">キャンセル</a>
      	</div>

			</div>
			);
	}
}

export defalut Searchbar;