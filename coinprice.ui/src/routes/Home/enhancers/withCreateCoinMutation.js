import { graphql } from 'react-apollo'
import gql from 'graphql-tag'

const MUTATION = gql`
  mutation createCoin($name: String!, $symbol: String!) {
    createCoin(name: $name, symbol: $symbol) {
      id
      name
      symbol
    }
  }
`

export default graphql(MUTATION, {
  props: ({ mutate }) => ({
    createCoin: ({ name, symbol }) => mutate({ variables: { name, symbol } }),
  }),
  options: {
    fetchPolicy: 'cache-and-network',
  },
})
