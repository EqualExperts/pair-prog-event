open Jest;
open Expect;

describe("populated cell", () => {
  test("dies of solitude if it has no neighbours", () =>
    expect(
      Life.life([|
        [|false, false, false|],
        [|false, true, false|],
        [|false, false, false|],
      |]),
    )
    |> toEqual([|
         [|false, false, false|],
         [|false, false, false|],
         [|false, false, false|],
       |])
  );

  Skip.test("survives if it has two or three neighbors", () =>
    pass
  );

  Skip.test("dies of solitude if it has one neighbour", () =>
    pass
  );

  Skip.test("dies by overpopulation with more than three neighbours", () =>
    pass
  );
});

describe("empty cell", () =>
  Skip.test("becomes populated if it has three neighbors", () =>
    pass
  )
);
