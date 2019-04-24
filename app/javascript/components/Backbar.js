import React from "react";
import PropTypes from "prop-types";

class Backbar extends React.Component{
	render(){
		return(
			<div>
				<li className="backbutton">
          <a href="javascript:history.back();"><img className="arrowimage" src="/arrowleft.png"/></a>
        </li>
			</div>
			);
	}
}

export default Backbar;