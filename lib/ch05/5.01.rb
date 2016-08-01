# Insertion

def insertion(m, n, i, j)
  n_l = n.length - 1

  # replace bits at location i through j in n_2 with m_2
  n[n_l-j..n_l-i] = m
  return n
end
