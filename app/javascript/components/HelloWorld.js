import React from "react";
import Card from '@material-ui/core/Card';
import PropTypes from "prop-types";

class HelloWorld extends React.Component {
  render () {
    return (
      <React.Fragment>
        {/* <div>Message: {this.props.greeting}</div> */}
        <Card>add</Card>
      </React.Fragment>
    );
  }
}

// HelloWorld.propTypes = {
//   greeting: PropTypes.string
// };

export default HelloWorld;
