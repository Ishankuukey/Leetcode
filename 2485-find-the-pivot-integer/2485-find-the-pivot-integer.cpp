class Solution {
public:
    int pivotInteger(int n) {
        int total = n * (n + 1) / 2;
        int pivot = sqrt(total);

        if (pivot * pivot == total) {
            return pivot;
        }

        return -1;
    }
};