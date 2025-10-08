package nktg

type Client struct {
    X    float64
    V    float64
    M    float64
    DmDt float64
}

func NewClient(x, v, m, dmDt float64) *Client {
    return &Client{X: x, V: v, M: m, DmDt: dmDt}
}

func (c *Client) Momentum() float64 {
    return c.M * c.V
}

func (c *Client) NKTg1() float64 {
    return c.Momentum() + c.DmDt*c.X
}

func (c *Client) NKTg2() float64 {
    return c.NKTg1() / c.M
}
