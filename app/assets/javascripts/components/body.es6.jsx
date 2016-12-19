class Body extends React.Component {

  constructor(props) {
    super(props);

  }

  render(){
    if (this.props.loggedIn) {
    return(
      <div>
        <h1>Categories</h1>
        <SimpleSlider />

      </div>)
    } else {
      return(
        <div>
          <LandingPage />
        </div>)
    }
  }
}
