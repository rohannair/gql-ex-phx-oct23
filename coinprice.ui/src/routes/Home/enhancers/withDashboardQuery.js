import { graphql } from 'react-apollo'
import gql from 'graphql-tag'

const QUERY = gql`
  query {
    viewer {
      id
      email
      name
      role
      coins {
        id
        name
        symbol
        price
      }
    }
  }
`

export default graphql(QUERY, {
  options: {
    fetchPolicy: 'cache-and-network',
  },
})

