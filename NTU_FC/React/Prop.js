const PriceLabel = (props) => {
    const {listPrice, salePrice} = props
    return (
      <div>
        <div>原價: {listPrice}</div>
        <div>特價: {salePrice}</div>
      </div>
    )
  } 
  
  
  const rootElement = document.getElementById("root");
  ReactDOM.render(<PriceLabel listPrice={100}, salePrice={80} />, rootElement);