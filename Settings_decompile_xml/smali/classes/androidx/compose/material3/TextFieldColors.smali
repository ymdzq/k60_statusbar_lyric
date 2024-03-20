.class public final Landroidx/compose/material3/TextFieldColors;
.super Ljava/lang/Object;
.source "TextFieldDefaults.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldDefaults.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldDefaults.kt\nandroidx/compose/material3/TextFieldColors\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,1194:1\n76#2:1195\n76#2:1196\n76#2:1197\n76#2:1198\n76#2:1199\n76#2:1200\n76#2:1201\n*S KotlinDebug\n*F\n+ 1 TextFieldDefaults.kt\nandroidx/compose/material3/TextFieldColors\n*L\n889#1:1195\n915#1:1196\n941#1:1197\n988#1:1198\n1010#1:1199\n1036#1:1200\n1061#1:1201\n*E\n"
.end annotation


# instance fields
.field private final containerColor:J

.field private final cursorColor:J

.field private final disabledIndicatorColor:J

.field private final disabledLabelColor:J

.field private final disabledLeadingIconColor:J

.field private final disabledPlaceholderColor:J

.field private final disabledPrefixColor:J

.field private final disabledSuffixColor:J

.field private final disabledSupportingTextColor:J

.field private final disabledTextColor:J

.field private final disabledTrailingIconColor:J

.field private final errorCursorColor:J

.field private final errorIndicatorColor:J

.field private final errorLabelColor:J

.field private final errorLeadingIconColor:J

.field private final errorPrefixColor:J

.field private final errorSuffixColor:J

.field private final errorSupportingTextColor:J

.field private final errorTrailingIconColor:J

.field private final focusedIndicatorColor:J

.field private final focusedLabelColor:J

.field private final focusedLeadingIconColor:J

.field private final focusedPrefixColor:J

.field private final focusedSuffixColor:J

.field private final focusedSupportingTextColor:J

.field private final focusedTrailingIconColor:J

.field private final placeholderColor:J

.field private final textColor:J

.field private final textSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

.field private final unfocusedIndicatorColor:J

.field private final unfocusedLabelColor:J

.field private final unfocusedLeadingIconColor:J

.field private final unfocusedPrefixColor:J

.field private final unfocusedSuffixColor:J

.field private final unfocusedSupportingTextColor:J

.field private final unfocusedTrailingIconColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(JJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 838
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->textColor:J

    move-wide v1, p3

    .line 839
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->disabledTextColor:J

    move-wide v1, p5

    .line 840
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->containerColor:J

    move-wide v1, p7

    .line 841
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->cursorColor:J

    move-wide v1, p9

    .line 842
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->errorCursorColor:J

    move-object v1, p11

    .line 843
    iput-object v1, v0, Landroidx/compose/material3/TextFieldColors;->textSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-wide v1, p12

    .line 844
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->focusedIndicatorColor:J

    move-wide/from16 v1, p14

    .line 845
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedIndicatorColor:J

    move-wide/from16 v1, p16

    .line 846
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->errorIndicatorColor:J

    move-wide/from16 v1, p18

    .line 847
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->disabledIndicatorColor:J

    move-wide/from16 v1, p20

    .line 848
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->focusedLeadingIconColor:J

    move-wide/from16 v1, p22

    .line 849
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedLeadingIconColor:J

    move-wide/from16 v1, p24

    .line 850
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->disabledLeadingIconColor:J

    move-wide/from16 v1, p26

    .line 851
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->errorLeadingIconColor:J

    move-wide/from16 v1, p28

    .line 852
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->focusedTrailingIconColor:J

    move-wide/from16 v1, p30

    .line 853
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedTrailingIconColor:J

    move-wide/from16 v1, p32

    .line 854
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->disabledTrailingIconColor:J

    move-wide/from16 v1, p34

    .line 855
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->errorTrailingIconColor:J

    move-wide/from16 v1, p36

    .line 856
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->focusedLabelColor:J

    move-wide/from16 v1, p38

    .line 857
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedLabelColor:J

    move-wide/from16 v1, p40

    .line 858
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->disabledLabelColor:J

    move-wide/from16 v1, p42

    .line 859
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->errorLabelColor:J

    move-wide/from16 v1, p44

    .line 860
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->placeholderColor:J

    move-wide/from16 v1, p46

    .line 861
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->disabledPlaceholderColor:J

    move-wide/from16 v1, p48

    .line 862
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->focusedSupportingTextColor:J

    move-wide/from16 v1, p50

    .line 863
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedSupportingTextColor:J

    move-wide/from16 v1, p52

    .line 864
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->disabledSupportingTextColor:J

    move-wide/from16 v1, p54

    .line 865
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->errorSupportingTextColor:J

    move-wide/from16 v1, p56

    .line 866
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->focusedPrefixColor:J

    move-wide/from16 v1, p58

    .line 867
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedPrefixColor:J

    move-wide/from16 v1, p60

    .line 868
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->disabledPrefixColor:J

    move-wide/from16 v1, p62

    .line 869
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->errorPrefixColor:J

    move-wide/from16 v1, p64

    .line 870
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->focusedSuffixColor:J

    move-wide/from16 v1, p66

    .line 871
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->unfocusedSuffixColor:J

    move-wide/from16 v1, p68

    .line 872
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->disabledSuffixColor:J

    move-wide/from16 v1, p70

    .line 873
    iput-wide v1, v0, Landroidx/compose/material3/TextFieldColors;->errorSuffixColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p71}, Landroidx/compose/material3/TextFieldColors;-><init>(JJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-void
.end method

.method private static final indicatorColor$lambda$2(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final labelColor$lambda$3(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final leadingIconColor$lambda$0(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final prefixColor$lambda$5(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final suffixColor$lambda$6(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final supportingTextColor$lambda$4(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final trailingIconColor$lambda$1(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final containerColor$material3_release(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const v0, 0x38e6dcbc

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.TextFieldColors.containerColor (TextFieldDefaults.kt:959)"

    .line 960
    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 961
    :cond_0
    iget-wide v0, p0, Landroidx/compose/material3/TextFieldColors;->containerColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public final cursorColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const v0, -0x7061426b

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.TextFieldColors.cursorColor (TextFieldDefaults.kt:1077)"

    .line 1078
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1079
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->errorCursorColor:J

    goto :goto_0

    :cond_1
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->cursorColor:J

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 1090
    instance-of v2, p1, Landroidx/compose/material3/TextFieldColors;

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 1092
    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->textColor:J

    check-cast p1, Landroidx/compose/material3/TextFieldColors;

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->textColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 1093
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->disabledTextColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->disabledTextColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 1094
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->cursorColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->cursorColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 1095
    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->errorCursorColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->errorCursorColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 1096
    :cond_5
    iget-object v2, p0, Landroidx/compose/material3/TextFieldColors;->textSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    iget-object v3, p1, Landroidx/compose/material3/TextFieldColors;->textSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1097
    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->focusedIndicatorColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->focusedIndicatorColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 1098
    :cond_7
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedIndicatorColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->unfocusedIndicatorColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 1099
    :cond_8
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->errorIndicatorColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->errorIndicatorColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 1100
    :cond_9
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->disabledIndicatorColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->disabledIndicatorColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1101
    :cond_a
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->focusedLeadingIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->focusedLeadingIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 1102
    :cond_b
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedLeadingIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->unfocusedLeadingIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 1103
    :cond_c
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->disabledLeadingIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->disabledLeadingIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 1104
    :cond_d
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->errorLeadingIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->errorLeadingIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 1105
    :cond_e
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->focusedTrailingIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->focusedTrailingIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 1106
    :cond_f
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedTrailingIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->unfocusedTrailingIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 1107
    :cond_10
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->disabledTrailingIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->disabledTrailingIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 1108
    :cond_11
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->errorTrailingIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->errorTrailingIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 1109
    :cond_12
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->containerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->containerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 1110
    :cond_13
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->focusedLabelColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->focusedLabelColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 1111
    :cond_14
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedLabelColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->unfocusedLabelColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    .line 1112
    :cond_15
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->disabledLabelColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->disabledLabelColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 1113
    :cond_16
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->errorLabelColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->errorLabelColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_17

    return v1

    .line 1114
    :cond_17
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->placeholderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->placeholderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_18

    return v1

    .line 1115
    :cond_18
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->disabledPlaceholderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->disabledPlaceholderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 1116
    :cond_19
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->focusedSupportingTextColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->focusedSupportingTextColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 1117
    :cond_1a
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedSupportingTextColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->unfocusedSupportingTextColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_1b

    return v1

    .line 1118
    :cond_1b
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->disabledSupportingTextColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->disabledSupportingTextColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_1c

    return v1

    .line 1119
    :cond_1c
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->errorSupportingTextColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->errorSupportingTextColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_1d

    return v1

    .line 1120
    :cond_1d
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->focusedPrefixColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->focusedPrefixColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 1121
    :cond_1e
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedPrefixColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->unfocusedPrefixColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    .line 1122
    :cond_1f
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->disabledPrefixColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->disabledPrefixColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    .line 1123
    :cond_20
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->errorPrefixColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->errorPrefixColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_21

    return v1

    .line 1124
    :cond_21
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->focusedSuffixColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->focusedSuffixColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 1125
    :cond_22
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedSuffixColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->unfocusedSuffixColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_23

    return v1

    .line 1126
    :cond_23
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->disabledSuffixColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TextFieldColors;->disabledSuffixColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_24

    return v1

    .line 1127
    :cond_24
    iget-wide v2, p0, Landroidx/compose/material3/TextFieldColors;->errorSuffixColor:J

    iget-wide p0, p1, Landroidx/compose/material3/TextFieldColors;->errorSuffixColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_25

    return v1

    :cond_25
    return v0

    :cond_26
    :goto_0
    return v1
.end method

.method public final getSelectionColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/text/selection/TextSelectionColors;
    .locals 3

    const v0, 0x3b78fdfb

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.TextFieldColors.<get-selectionColors> (TextFieldDefaults.kt:1085)"

    .line 1086
    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    iget-object p0, p0, Landroidx/compose/material3/TextFieldColors;->textSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1133
    iget-wide v0, p0, Landroidx/compose/material3/TextFieldColors;->textColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1134
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->disabledTextColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1135
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->cursorColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1136
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->errorCursorColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1137
    iget-object v1, p0, Landroidx/compose/material3/TextFieldColors;->textSelectionColors:Landroidx/compose/foundation/text/selection/TextSelectionColors;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1138
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->focusedIndicatorColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1139
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedIndicatorColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1140
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->errorIndicatorColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1141
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->disabledIndicatorColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1142
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->focusedLeadingIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1143
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedLeadingIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1144
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->disabledLeadingIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1145
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->errorLeadingIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1146
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->focusedTrailingIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1147
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedTrailingIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1148
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->disabledTrailingIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1149
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->errorTrailingIconColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1150
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->containerColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1151
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->focusedLabelColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1152
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedLabelColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1153
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->disabledLabelColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1154
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->errorLabelColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1155
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->placeholderColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1156
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->disabledPlaceholderColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1157
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->focusedSupportingTextColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1158
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedSupportingTextColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1159
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->disabledSupportingTextColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1160
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->errorSupportingTextColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1161
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->focusedPrefixColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1162
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedPrefixColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1163
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->disabledPrefixColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1164
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->errorPrefixColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1165
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->focusedSuffixColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1166
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedSuffixColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1167
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->disabledSuffixColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1168
    iget-wide v1, p0, Landroidx/compose/material3/TextFieldColors;->errorSuffixColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final indicatorColor$material3_release(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const-string v0, "interactionSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x6fe81c8b

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.TextFieldColors.indicatorColor (TextFieldDefaults.kt:935)"

    .line 940
    invoke-static {v0, p5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x6

    shr-int/2addr p5, v0

    and-int/lit8 p5, p5, 0xe

    .line 941
    invoke-static {p3, p4, p5}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p3

    if-nez p1, :cond_1

    .line 944
    iget-wide p2, p0, Landroidx/compose/material3/TextFieldColors;->disabledIndicatorColor:J

    :goto_0
    move-wide v1, p2

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 945
    iget-wide p2, p0, Landroidx/compose/material3/TextFieldColors;->errorIndicatorColor:J

    goto :goto_0

    .line 946
    :cond_2
    invoke-static {p3}, Landroidx/compose/material3/TextFieldColors;->indicatorColor$lambda$2(Landroidx/compose/runtime/State;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-wide p2, p0, Landroidx/compose/material3/TextFieldColors;->focusedIndicatorColor:J

    goto :goto_0

    .line 947
    :cond_3
    iget-wide p2, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedIndicatorColor:J

    goto :goto_0

    :goto_1
    const/4 p0, 0x0

    if-eqz p1, :cond_4

    const p1, 0x2aa951b4

    .line 949
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const/16 p1, 0x96

    const/4 p2, 0x0

    .line 950
    invoke-static {p1, p0, p2, v0, p2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v6, 0x30

    const/4 v7, 0x4

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-KTwxG1Y(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object p0

    .line 949
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_2

    :cond_4
    const p1, 0x2aa9521d

    .line 951
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 952
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p1

    invoke-static {p1, p4, p0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    .line 951
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 949
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public final labelColor$material3_release(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const-string v0, "interactionSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x459177da

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.TextFieldColors.labelColor (TextFieldDefaults.kt:982)"

    .line 987
    invoke-static {v0, p5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    shr-int/lit8 p5, p5, 0x6

    and-int/lit8 p5, p5, 0xe

    .line 988
    invoke-static {p3, p4, p5}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p3

    if-nez p1, :cond_1

    .line 991
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->disabledLabelColor:J

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 992
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->errorLabelColor:J

    goto :goto_0

    .line 993
    :cond_2
    invoke-static {p3}, Landroidx/compose/material3/TextFieldColors;->labelColor$lambda$3(Landroidx/compose/runtime/State;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->focusedLabelColor:J

    goto :goto_0

    .line 994
    :cond_3
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedLabelColor:J

    .line 996
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p4, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public final leadingIconColor$material3_release(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const-string v0, "interactionSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x37245185

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.TextFieldColors.leadingIconColor (TextFieldDefaults.kt:883)"

    .line 888
    invoke-static {v0, p5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    shr-int/lit8 p5, p5, 0x6

    and-int/lit8 p5, p5, 0xe

    .line 889
    invoke-static {p3, p4, p5}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p3

    if-nez p1, :cond_1

    .line 893
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->disabledLeadingIconColor:J

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 894
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->errorLeadingIconColor:J

    goto :goto_0

    .line 895
    :cond_2
    invoke-static {p3}, Landroidx/compose/material3/TextFieldColors;->leadingIconColor$lambda$0(Landroidx/compose/runtime/State;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->focusedLeadingIconColor:J

    goto :goto_0

    .line 896
    :cond_3
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedLeadingIconColor:J

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    .line 891
    invoke-static {p0, p4, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public final placeholderColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const v0, -0x7006fea

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.TextFieldColors.placeholderColor (TextFieldDefaults.kt:969)"

    .line 970
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 971
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->placeholderColor:J

    goto :goto_0

    :cond_1
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->disabledPlaceholderColor:J

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public final prefixColor$material3_release(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const-string v0, "interactionSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7b91254

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.TextFieldColors.prefixColor (TextFieldDefaults.kt:1030)"

    .line 1035
    invoke-static {v0, p5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    shr-int/lit8 p5, p5, 0x6

    and-int/lit8 p5, p5, 0xe

    .line 1036
    invoke-static {p3, p4, p5}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p3

    if-nez p1, :cond_1

    .line 1039
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->disabledPrefixColor:J

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1040
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->errorPrefixColor:J

    goto :goto_0

    .line 1041
    :cond_2
    invoke-static {p3}, Landroidx/compose/material3/TextFieldColors;->prefixColor$lambda$5(Landroidx/compose/runtime/State;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->focusedPrefixColor:J

    goto :goto_0

    .line 1042
    :cond_3
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedPrefixColor:J

    .line 1044
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p4, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public final suffixColor$material3_release(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const-string v0, "interactionSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5de59e93

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.TextFieldColors.suffixColor (TextFieldDefaults.kt:1055)"

    .line 1060
    invoke-static {v0, p5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    shr-int/lit8 p5, p5, 0x6

    and-int/lit8 p5, p5, 0xe

    .line 1061
    invoke-static {p3, p4, p5}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p3

    if-nez p1, :cond_1

    .line 1064
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->disabledSuffixColor:J

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1065
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->errorSuffixColor:J

    goto :goto_0

    .line 1066
    :cond_2
    invoke-static {p3}, Landroidx/compose/material3/TextFieldColors;->suffixColor$lambda$6(Landroidx/compose/runtime/State;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->focusedSuffixColor:J

    goto :goto_0

    .line 1067
    :cond_3
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedSuffixColor:J

    .line 1069
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p4, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public final supportingTextColor$material3_release(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const-string v0, "interactionSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x574db242

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.TextFieldColors.supportingTextColor (TextFieldDefaults.kt:1004)"

    .line 1009
    invoke-static {v0, p5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    shr-int/lit8 p5, p5, 0x6

    and-int/lit8 p5, p5, 0xe

    .line 1010
    invoke-static {p3, p4, p5}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p3

    if-nez p1, :cond_1

    .line 1014
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->disabledSupportingTextColor:J

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1015
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->errorSupportingTextColor:J

    goto :goto_0

    .line 1016
    :cond_2
    invoke-static {p3}, Landroidx/compose/material3/TextFieldColors;->supportingTextColor$lambda$4(Landroidx/compose/runtime/State;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->focusedSupportingTextColor:J

    goto :goto_0

    .line 1017
    :cond_3
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedSupportingTextColor:J

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    .line 1012
    invoke-static {p0, p4, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public final textColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const v0, 0x7c054d2c

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.TextFieldColors.textColor (TextFieldDefaults.kt:999)"

    .line 1000
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1001
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->textColor:J

    goto :goto_0

    :cond_1
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->disabledTextColor:J

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public final trailingIconColor$material3_release(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const-string v0, "interactionSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x686e689

    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.TextFieldColors.trailingIconColor (TextFieldDefaults.kt:909)"

    .line 914
    invoke-static {v0, p5, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    shr-int/lit8 p5, p5, 0x6

    and-int/lit8 p5, p5, 0xe

    .line 915
    invoke-static {p3, p4, p5}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p3

    if-nez p1, :cond_1

    .line 919
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->disabledTrailingIconColor:J

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 920
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->errorTrailingIconColor:J

    goto :goto_0

    .line 921
    :cond_2
    invoke-static {p3}, Landroidx/compose/material3/TextFieldColors;->trailingIconColor$lambda$1(Landroidx/compose/runtime/State;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->focusedTrailingIconColor:J

    goto :goto_0

    .line 922
    :cond_3
    iget-wide p0, p0, Landroidx/compose/material3/TextFieldColors;->unfocusedTrailingIconColor:J

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    .line 917
    invoke-static {p0, p4, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method
