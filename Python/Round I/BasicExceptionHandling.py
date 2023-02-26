def main():
    qty = None
    cost = None

    def fetch_quantity():
        """
        returns any number
        """
        #...

    def fetch_cost():
        """

        return: any number
        """
        #...

    def compute_cost_per_quantity():
        try:
            qty = fetch_quantity()
            cost = fetch_cost()
            cost_per_quantity = cost/qty
            return cost_per_quantity
        except Exception as e:
            print(f"Exception occurred in compute_cost_per_quantity: {e}")
            raise

    try:
        cost_per_quantity = compute_cost_per_quantity()
        a = 1 + 2 + cost_per_quantity
    except Exception as e:
        print(f"Exception occurred in  main: {e}")
        return

    b = 4 + 5
    print(a+b)