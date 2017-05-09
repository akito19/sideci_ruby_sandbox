import React, { Component } from 'react';
  		  

  export default class App extends Component {		  export default class App extends Component {
    render() {		    render() {
      return (		      return (
        <h1>Hello, world.</h1>		        <h1>Hello, world.</h1>
      );		      );
    }		    }
  }		  }
 
 +const fooApp extends Component {
 +  render () {
 +    return(
 +          <p>error</p>
 +        );
 +  }
 +}
