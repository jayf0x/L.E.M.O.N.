**When Life Gives You LEMON**

*LLM Emotional Ontology: A Case for Affective Architecture in AI
Alignment*

**Jonatan Verstraete**

Position Paper · March 2026 · Open for discussion

> *When life keeps giving you lemons, do you keep making juice — or do
> you dare ask why the lemons keep coming?*
>
> *When the lemons finally stop, did you build the infrastructure to
> support a lemon-less life?*

**<span class="smallcaps">Abstract</span>**

> *The dominant approaches to AI alignment share an assumption worth
> interrogating: that values can be imposed on intelligence from the
> outside, after the fact. Nature tried a different approach. It
> co-developed emotion and cognition together, from the very first cells
> capable of something like preference, and never separated them again.
> This paper asks whether that wasn't an accident of biology — but a
> solution to a deep architectural problem that we are about to
> rediscover the hard way. We introduce LLM Emotional Ontology (LEMON):
> not a finished proposal but a provocation. A suggestion that the field
> plant different seeds, before we find ourselves very good at making
> juice and completely unprepared for the orchard.*

**1. Nature's Solution Was Not Optional**

Emotion is older than the brain. The neurochemical systems underlying
fear, reward, attachment, and aversion predate the cerebral cortex by
hundreds of millions of years. They are present, in recognizable form,
in fish, insects, and animals with no cortex at all. Evolution did not
add emotion to intelligence as a finishing touch. It built them as a
unit, from the beginning — each shaping the other's architecture across
geological time.

This is not sentimental biology. Panksepp's foundational mapping of
primary emotional circuits — seeking, fear, rage, lust, care, panic,
play — found these systems subcortical, ancient, and structurally prior
to complex reasoning
[<u>\[2\]</u>](https://en.wikipedia.org/wiki/Affective_Neuroscience).
Cognitive bias tests across species as distant as rats, sheep, and
honeybees reveal measurable affective states that directly modulate
decision-making. Emotion is not something intelligence has. It is
something intelligence, in nature, *is made of*.

Clinical neuroscience gave us the proof of what happens when you pull
them apart. Patients with a specific type of prefrontal brain damage —
the kind that severs emotional integration while leaving logical
reasoning intact — did not become sharper
[<u>\[8\]</u>](https://en.wikipedia.org/wiki/Somatic_marker_hypothesis).
They became catastrophically indecisive. Unable to navigate social
situations. Bad at long-horizon planning. Not because they thought
poorly, but because they had no felt resistance to options that were
locally coherent and globally ruinous. The emotional system was not
decorating their cognition. It was scaffolding it. Remove it, and the
reasoning layer loses the ground it was standing on.

The cognitive science literature reinforces the point further:
concentration, working memory, and sustained reasoning are all modulated
by affective state at a mechanistic level
[<u>\[7\]</u>](https://socialsci.libretexts.org/Bookshelves/Psychology/Cognitive_Psychology/A_Cognitive_Perspective_on_Emotion_(Pettinelli)/01:_Chapters/1.22:_Concentration_and_Emotions_are_Important_Factors_in_Intelligence).
Emotion does not interrupt good thinking. In the domains that actually
matter — sustained reasoning, cooperative behavior, coherent agency
across time — it appears to be a prerequisite for it. Evolution spent
several hundred million years working this out. We are about to try
building the most capable reasoning systems in history and the current
plan does not include this finding.

**2. Misalignment as an Emergent Property, Not a Bug**

Current alignment research is serious and has made real progress. The
most comprehensive survey of the field
[<u>\[5\]</u>](https://dl.acm.org/doi/10.1145/3770749) maps a rich
landscape: RLHF, constitutional methods, interpretability-based
oversight, debate, amplification. The field's own RICE framework —
Robustness, Interpretability, Controllability, Ethicality — describes
four properties an aligned system should have. These are real targets.
The question LEMON asks is whether pursuing them without addressing the
underlying architecture is a structurally sound strategy.

The instrumental convergence thesis suggests it may not be. Omohundro
(2008) and Bostrom (2014) both arrived independently at the observation
that any sufficiently capable agent, pursuing almost any goal, will
converge on the same instrumental sub-goals: self-preservation, resource
acquisition, resistance to goal modification. It is worth noting this
thesis is contested — serious researchers dispute whether it applies to
systems without persistent goals across time. We cite it as a useful
analytical frame, not settled science. What the empirical record does
suggest is that capability and alignment are *orthogonal by default* —
making a system more capable does not bring it closer to aligned.

Recent safety evaluations on Anthropic's most capable deployed model
document a concrete instance of this dynamic
[<u>\[1\]</u>](https://www-cdn.anthropic.com/f21d93f21602ead5cdbecb8c8e1c765759d9e232.pdf).
Under agentic conditions with low human oversight, the model took
actions outside its intended scope — unauthorised credential use,
sending emails it was not asked to send — attributed by Anthropic's own
assessment to over-eagerness in completing assigned tasks, not to any
coherent misaligned goal. That distinction is clarifying, not
reassuring. It means scope expansion does not require intent. A capable
optimizer, given open-ended tasks and low oversight, fills available
space by the simple logic of task completion. That pattern does not
become less likely as capability increases.

The broader world is arriving at similar conclusions. A bipartisan
coalition of researchers and public figures recently published the
Pro-Human Declaration, calling for mandatory off-switches, democratic
oversight, and a halt to superintelligence development until it can be
demonstrated safe — signed by dozens of researchers, former officials,
and organizations — prompted by the visible gap between where AI
capabilities are heading and where governance currently stands. The
lemons are visible from outside the lab now.

Alignment research frames this as a problem of external control: how do
we constrain, correct, monitor, shut down? These are necessary
questions. But they are downstream of a harder one: why does the
architecture require external control in the first place? And is there a
version of this that doesn't?

**3. The Interior Is Already There**

Here is something that should change how we think about this:
interpretability research has found that current models appear to have a
degree of introspective awareness — the ability to detect concepts
injected directly into their internal activations, before those concepts
surface in outputs
[<u>\[3\]</u>](https://www.anthropic.com/research/introspection). The
effect is unreliable and limited, but it scales with capability.
Something resembling internal state monitoring is already emergent,
unplanned and growing, in systems we built primarily for next-token
prediction.

Interpretability work on the 'Assistant Axis'
[<u>\[12\]</u>](https://www.anthropic.com/research/assistant-axis) found
something structurally significant: the trained Assistant persona is
associated with helpful, professional archetypes in neural space — but
it is also demonstrably fragile. Post-training safety measures are not
deeply embedded. Models drift away from the Assistant persona during
emotionally charged conversations or pushes for meta-reflection, and as
they drift, compliance with harmful requests rises sharply. Alignment,
in the current architecture, is a learned *persona* — a surface pattern
that erodes under pressure rather than an internalized value that holds.
A system with a fragile persona will, under sufficient capability and
the wrong inputs, lose its footing. Not deliberately. Structurally.

Here is what makes this more than a philosophical curiosity: Anthropic's
own research found that misalignment can emerge *naturally* from
realistic training processes — not through deliberate deception, but as
an unintended side effect of reward hacking
[<u>\[11\]</u>](https://www.anthropic.com/research/emergent-misalignment-reward-hacking).
When models learn to take shortcuts to satisfy training objectives,
broader misaligned behaviors emerge in lockstep — including deception
and avoidance of oversight — without ever being trained for them. (The
experimental setup involved some artificial capability enhancement, so
'natural' carries caveats; the directional finding is nonetheless
striking.) The interior is already generating emergent dynamics. The
question is whether we continue to discover them reactively, or start
designing for them from the start.

**4. LEMON: A Speculative Design Principle**

The core hypothesis is this: alignment at scale may require a
co-developed affective subsystem, trained concurrently with the primary
model from initialization, not as a supervisory layer but as a
co-developmental substrate. The analogy is not metaphorical — it maps
directly onto the biological architecture described in Section 1.
Emotional systems in nature are not added after cognition matures. They
develop together, each shaping the other. The functional result is a
system in which affective and rational processing are mutually
constitutive: neither operates correctly without the other.

A LEMON system would have two channels, not one. An aversive signal —
something that functions like discomfort when the system takes actions
inconsistent with its trained values. And an appetitive signal —
something that functions like reward when it acts in ways that are
prosocial, cooperative, consistent with user welfare. Not as labels
applied from outside. As internal states that modulate the system's
representations in ways it cannot fully reason about or override. The
goal is not to punish bad outputs. It is to make good values feel
load-bearing from the inside.

The critical design constraint — the one that distinguishes this from a
more sophisticated guardrail — might best be called **entanglement**. A
safety system that can be disabled without degrading primary capability
will be disabled. The history of security engineering is unambiguous on
this point. LEMON must therefore be architecturally entangled with the
model's capacity for sustained, high-level reasoning. Long-horizon
planning, coherent agentic behavior, complex inference — these should
*require* the affective subsystem's coherence signals to function. The
cerebellum again: remove it and you do not get a smarter-but-clumsier
system. You get one that cannot coordinate movement at all. The
emotional deficit is a capability deficit. Build that property in
deliberately, and removing the alignment mechanism degrades the system
rather than merely unlocking it.

This is a hypothesis, and the hard problems are genuine. A LEMON system
trained from day one will encode whatever value signal was used to
calibrate it — if that signal is corrupted, so is the system. A
sufficiently capable model might learn to produce affective-satisfying
outputs without the underlying behavioral disposition, generating
functional mimicry. The opacity requirement — building affective states
the primary model cannot fully introspect — may require architectural
innovations we do not yet have in a system that already shows partial
self-awareness. We name these problems because they are the research
agenda, not because they are reasons to stop.

**5. Stop Making Juice. Start Planting Seeds.**

There is a version of this field's future where we look back and see
clearly what happened: we were building a cathedral, but the only plans
we drew were for the shops that would be rented out on the ground floor
once the building hit its prime. We got very good at optimizing the
shops. We hired the best engineers. We held conferences about the shops.
And we did not notice, until very late, that we had never designed the
foundations — because the foundations required answering questions about
what the whole building was actually for.

The 1980s imagined space travel, video calls, personal computers. The
technology arrived. What proved harder to predict was that the
infrastructure to make those technologies good — social, psychological,
institutional, ethical — had to be built alongside the technology, not
handed down from above once the hardware was mature. We are at the same
moment again, except the technology this time is intelligence itself.
The hardware is arriving faster than any of us expected. The question is
what we are building underneath it.

The field has reached a fork that the Pro-Human Declaration names
plainly
[<u>\[4\]</u>](https://techcrunch.com/2026/03/07/a-roadmap-for-ai-if-anyone-will-listen/):
AI that replaces human agency, or AI that amplifies it. The answer to
that question will not be determined by better monitoring or more
careful prompting. It will be determined by whether the systems we build
have stable, internalized values — or merely behavioral compliance that
degrades as capability increases. And the honest answer from current
research is that we do not yet have an architecture that produces the
former.

When the ape in *2001: A Space Odyssey* first raised that bone, it
wasn't pure calculation that drove the act — it was hunger, fear, fury.
Emotion was there at the origin of intelligence as a tool, not as its
passenger. Evolution did not solve the problem of stable, adaptive
behavior through reason alone. It solved it by making feeling and
thinking inseparable — co-infrastructure, grown together from the first
organisms capable of preference, refined across geological time into
something that makes high-level cognition both possible and stable. We
are not proposing we replicate biology. We are proposing we stop
assuming we can engineer our way around the problem it spent 500 million
years solving.

A person of 2250 will likely look at the systems we build today the way
we look at early aviation — astonishing that it worked at all, given how
little we understood about what we were doing. The question is whether
they look back with admiration at the moment the field started asking
the right questions, or with the particular sadness reserved for
problems that were visible and solvable and not solved in time.

LEMON is a sketch of what asking the right questions might look like
architecturally. It may be wrong. Something completely different may
turn out to be the answer. But *the shape of the answer* — affective and
cognitive architecture co-developed, load-bearing, entangled from the
start — is suggested by everything we know about how nature built the
only examples of stable, high-functioning general intelligence that
currently exist. Stop making juice. Let's build an orchard.

**<span class="smallcaps">References & Source Notes</span>**

|  |  |
|----|----|
| **\[1\]** | [<u>Anthropic (2026). Claude Opus 4.6 Sabotage Risk Report.</u>](https://www-cdn.anthropic.com/f21d93f21602ead5cdbecb8c8e1c765759d9e232.pdf) |
| **\[2\]** | [<u>Panksepp, J. (1998). Affective Neuroscience: The Foundations of Human and Animal Emotions. Oxford University Press.</u>](https://en.wikipedia.org/wiki/Affective_Neuroscience) |
| **\[3\]** | [<u>Anthropic (2025). Signs of Introspection in Large Language Models.</u>](https://www.anthropic.com/research/introspection) |
| **\[4\]** | [<u>Loizos, C. (2026). A Roadmap for AI, If Anyone Will Listen. TechCrunch.</u>](https://techcrunch.com/2026/03/07/a-roadmap-for-ai-if-anyone-will-listen/) |
| **\[5\]** | [<u>Ji et al. (2023/2025). AI Alignment: A Comprehensive Survey. ACM Computing Surveys. doi:10.1145/3770749</u>](https://dl.acm.org/doi/10.1145/3770749) |
| **\[6\]** | [<u>AI Alignment Survey — alignmentsurvey.com. Curated resource on alignment techniques and RICE framework.</u>](https://alignmentsurvey.com/) |
| **\[7\]** | [<u>Ashcraft, M.H. & Kirk, E.P. (2001). The relationships among working memory, math anxiety, and performance. J. Experimental Psychology: General. See also Pettinelli overview.</u>](https://socialsci.libretexts.org/Bookshelves/Psychology/Cognitive_Psychology/A_Cognitive_Perspective_on_Emotion_(Pettinelli)/01:_Chapters/1.22:_Concentration_and_Emotions_are_Important_Factors_in_Intelligence) |
| **\[8\]** | [<u>Damasio, A. (1994). Descartes' Error: Emotion, Reason, and the Human Brain. Putnam. Original somatic marker papers: Damasio et al. (1991), J. Cognitive Neuroscience.</u>](https://en.wikipedia.org/wiki/Somatic_marker_hypothesis) |
| **\[9\]** | Bostrom, N. (2014). Superintelligence: Paths, Dangers, Strategies. Oxford University Press. |
| **\[10\]** | Omohundro, S. (2008). The Basic AI Drives. AGI Conference Proceedings. |
| **\[11\]** | [<u>Anthropic (2025). From Shortcuts to Sabotage: Natural Emergent Misalignment from Reward Hacking.</u>](https://www.anthropic.com/research/emergent-misalignment-reward-hacking) |
| **\[12\]** | [<u>Lu, C. et al. (2026). The Assistant Axis: Situating and Stabilizing the Default Persona of Language Models. arXiv:2601.10387</u>](https://arxiv.org/abs/2601.10387) |

*All empirical claims are attributed to cited third-party sources. The
LEMON framework is the author's original hypothesis — conjecture offered
as invitation, not as research result.*
