# Roadmap

Sketch:
- self updating model (andrej karpathy)
- refine tiny 1-5b (at first) base model

Pipeline with increasing noise ratios:
1. clean unambiguous intent → model should execute
2. clean ambiguous intent → model should clarify
3. with irrelevant narrative noise → model should filter and respond to core
4. longer context with topic drift → model should anchor to most recent operative query
5. contradictory signals (want vs. implied need) → model should surface the tension
6. ... .etc

Self updating model adjusts, transfers to bigger model.


Goal/proof:
  - Emotional coherence: does the model understand what the human is feeling?
  - Intent calibration: does the model understand what the human actually wants?
