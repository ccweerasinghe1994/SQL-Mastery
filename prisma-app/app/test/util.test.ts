import {toUpperCase} from "../src/util";


describe('Utils test suite', () => {
    test('should return upper case string', () => {
        const result = toUpperCase('hello');
        expect(result).toBe('HELLO');
    });
});
