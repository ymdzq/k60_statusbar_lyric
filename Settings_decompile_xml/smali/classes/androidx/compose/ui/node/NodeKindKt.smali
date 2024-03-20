.class public final Landroidx/compose/ui/node/NodeKindKt;
.super Ljava/lang/Object;
.source "NodeKind.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodeKind.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NodeKind.kt\nandroidx/compose/ui/node/NodeKindKt\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 6 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,281:1\n51#1:285\n51#1:287\n51#1:289\n51#1:291\n51#1:293\n51#1:295\n51#1:297\n51#1:299\n51#1:301\n51#1:303\n51#1:305\n51#1:308\n51#1:310\n51#1:312\n51#1:314\n51#1:316\n51#1:318\n51#1:320\n51#1:322\n51#1:324\n51#1:326\n51#1:328\n51#1:330\n51#1:332\n51#1:334\n81#2:282\n67#2:283\n69#2:284\n85#2:286\n71#2:288\n73#2:290\n75#2:292\n77#2:294\n91#2:296\n89#2:298\n83#2:300\n79#2:302\n81#2:304\n67#2:306\n69#2:307\n71#2:309\n73#2:311\n75#2:313\n77#2:315\n79#2:317\n81#2:319\n83#2:321\n85#2:323\n87#2:325\n89#2:327\n91#2:329\n93#2:331\n95#2:333\n69#2:335\n69#2:337\n83#2:338\n71#2:340\n73#2:342\n79#2:344\n87#2:346\n89#2:348\n91#2:350\n87#2:352\n195#3:336\n195#3:339\n195#3:341\n195#3:343\n195#3:345\n195#3:347\n195#3:349\n195#3:351\n340#4:353\n206#4,2:354\n208#4,7:359\n215#4,15:367\n1182#5:356\n1161#5,2:357\n48#6:366\n*S KotlinDebug\n*F\n+ 1 NodeKind.kt\nandroidx/compose/ui/node/NodeKindKt\n*L\n103#1:285\n106#1:287\n109#1:289\n112#1:291\n115#1:293\n121#1:295\n124#1:297\n127#1:299\n130#1:301\n133#1:303\n140#1:305\n149#1:308\n152#1:310\n155#1:312\n158#1:314\n161#1:316\n164#1:318\n167#1:320\n170#1:322\n173#1:324\n176#1:326\n179#1:328\n182#1:330\n185#1:332\n188#1:334\n59#1:282\n101#1:283\n103#1:284\n106#1:286\n109#1:288\n112#1:290\n115#1:292\n121#1:294\n124#1:296\n127#1:298\n130#1:300\n133#1:302\n140#1:304\n147#1:306\n149#1:307\n152#1:309\n155#1:311\n158#1:313\n161#1:315\n164#1:317\n167#1:319\n170#1:321\n173#1:323\n176#1:325\n179#1:327\n182#1:329\n185#1:331\n188#1:333\n209#1:335\n212#1:337\n216#1:338\n219#1:340\n222#1:342\n225#1:344\n228#1:346\n235#1:348\n244#1:350\n251#1:352\n209#1:336\n216#1:339\n219#1:341\n222#1:343\n225#1:345\n228#1:347\n235#1:349\n244#1:351\n251#1:353\n251#1:354,2\n251#1:359,7\n251#1:367,15\n251#1:356\n251#1:357,2\n251#1:366\n*E\n"
.end annotation


# direct methods
.method public static final autoInvalidateInsertedNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    const-string/jumbo v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 201
    invoke-static {p0, v0}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNode(Landroidx/compose/ui/Modifier$Node;I)V

    return-void
.end method

.method private static final autoInvalidateNode(Landroidx/compose/ui/Modifier$Node;I)V
    .locals 5

    .line 208
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x2

    .line 69
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 195
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v2

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 209
    instance-of v1, p0, Landroidx/compose/ui/node/LayoutModifierNode;

    if-eqz v1, :cond_1

    .line 210
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/LayoutModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurements(Landroidx/compose/ui/node/LayoutModifierNode;)V

    if-ne p1, v0, :cond_1

    .line 69
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 212
    invoke-static {p0, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->detach()V

    :cond_1
    const/16 v1, 0x100

    .line 83
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 195
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 216
    instance-of v1, p0, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    if-eqz v1, :cond_3

    .line 217
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    :cond_3
    const/4 v1, 0x4

    .line 71
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 195
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    if-eqz v1, :cond_5

    .line 219
    instance-of v1, p0, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v1, :cond_5

    .line 220
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/DrawModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    :cond_5
    const/16 v1, 0x8

    .line 73
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 195
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    if-eqz v1, :cond_7

    .line 222
    instance-of v1, p0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v1, :cond_7

    .line 223
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/SemanticsModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_7
    const/16 v1, 0x40

    .line 79
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 195
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_4

    :cond_8
    move v1, v3

    :goto_4
    if-eqz v1, :cond_9

    .line 225
    instance-of v1, p0, Landroidx/compose/ui/node/ParentDataModifierNode;

    if-eqz v1, :cond_9

    .line 226
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/ParentDataModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/ParentDataModifierNodeKt;->invalidateParentData(Landroidx/compose/ui/node/ParentDataModifierNode;)V

    :cond_9
    const/16 v1, 0x400

    .line 87
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 195
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_5

    :cond_a
    move v1, v3

    :goto_5
    if-eqz v1, :cond_c

    .line 228
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    if-eqz v1, :cond_c

    if-ne p1, v0, :cond_b

    .line 230
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->onRemoved$ui_release()V

    goto :goto_6

    .line 231
    :cond_b
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    move-object v4, p0

    check-cast v4, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    invoke-interface {v1, v4}, Landroidx/compose/ui/focus/FocusOwner;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    :cond_c
    :goto_6
    const/16 v1, 0x800

    .line 89
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 195
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_7

    :cond_d
    move v1, v3

    :goto_7
    if-eqz v1, :cond_f

    .line 236
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    if-eqz v1, :cond_f

    .line 237
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->specifiesCanFocusProperty(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-ne p1, v0, :cond_e

    .line 240
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKindKt;->scheduleInvalidationOfAssociatedFocusTargets(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V

    goto :goto_8

    .line 241
    :cond_e
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v4

    invoke-interface {v4, v1}, Landroidx/compose/ui/focus/FocusOwner;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V

    :cond_f
    :goto_8
    const/16 v1, 0x1000

    .line 91
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 195
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_10

    goto :goto_9

    :cond_10
    move v2, v3

    :goto_9
    if-eqz v2, :cond_11

    .line 244
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    if-eqz v1, :cond_11

    if-eq p1, v0, :cond_11

    .line 245
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object p1

    check-cast p0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    invoke-interface {p1, p0}, Landroidx/compose/ui/focus/FocusOwner;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V

    :cond_11
    return-void

    .line 208
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final autoInvalidateRemovedNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    const-string/jumbo v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 198
    invoke-static {p0, v0}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNode(Landroidx/compose/ui/Modifier$Node;I)V

    return-void
.end method

.method public static final autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    const-string/jumbo v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 204
    invoke-static {p0, v0}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNode(Landroidx/compose/ui/Modifier$Node;I)V

    return-void
.end method

.method public static final calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Element;)I
    .locals 2

    const-string v0, "element"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 102
    instance-of v1, p0, Landroidx/compose/ui/layout/LayoutModifier;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 69
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 105
    :cond_0
    instance-of v1, p0, Landroidx/compose/ui/layout/IntermediateLayoutModifier;

    if-eqz v1, :cond_1

    const/16 v1, 0x200

    .line 85
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 108
    :cond_1
    instance-of v1, p0, Landroidx/compose/ui/draw/DrawModifier;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    .line 71
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 111
    :cond_2
    instance-of v1, p0, Landroidx/compose/ui/semantics/SemanticsModifier;

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    .line 73
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 114
    :cond_3
    instance-of v1, p0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    if-eqz v1, :cond_4

    const/16 v1, 0x10

    .line 75
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 118
    :cond_4
    instance-of v1, p0, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    if-nez v1, :cond_5

    .line 119
    instance-of v1, p0, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    if-eqz v1, :cond_6

    :cond_5
    const/16 v1, 0x20

    .line 77
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 123
    :cond_6
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusEventModifier;

    if-eqz v1, :cond_7

    const/16 v1, 0x1000

    .line 91
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 126
    :cond_7
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusOrderModifier;

    if-eqz v1, :cond_8

    const/16 v1, 0x800

    .line 89
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 129
    :cond_8
    instance-of v1, p0, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;

    if-eqz v1, :cond_9

    const/16 v1, 0x100

    .line 83
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 132
    :cond_9
    instance-of v1, p0, Landroidx/compose/ui/layout/ParentDataModifier;

    if-eqz v1, :cond_a

    const/16 v1, 0x40

    .line 79
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 136
    :cond_a
    instance-of v1, p0, Landroidx/compose/ui/layout/OnPlacedModifier;

    if-nez v1, :cond_b

    .line 137
    instance-of v1, p0, Landroidx/compose/ui/layout/OnRemeasuredModifier;

    if-nez v1, :cond_b

    .line 138
    instance-of p0, p0, Landroidx/compose/ui/layout/LookaheadOnPlacedModifier;

    if-eqz p0, :cond_c

    :cond_b
    const/16 p0, 0x80

    .line 81
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p0

    or-int/2addr v0, p0

    :cond_c
    return v0
.end method

.method public static final calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Node;)I
    .locals 2

    const-string/jumbo v0, "node"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 148
    instance-of v1, p0, Landroidx/compose/ui/node/LayoutModifierNode;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 69
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 151
    :cond_0
    instance-of v1, p0, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 71
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 154
    :cond_1
    instance-of v1, p0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    .line 73
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 157
    :cond_2
    instance-of v1, p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    .line 75
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 160
    :cond_3
    instance-of v1, p0, Landroidx/compose/ui/modifier/ModifierLocalNode;

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    .line 77
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 163
    :cond_4
    instance-of v1, p0, Landroidx/compose/ui/node/ParentDataModifierNode;

    if-eqz v1, :cond_5

    const/16 v1, 0x40

    .line 79
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 166
    :cond_5
    instance-of v1, p0, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v1, :cond_6

    const/16 v1, 0x80

    .line 81
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 169
    :cond_6
    instance-of v1, p0, Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    .line 83
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 172
    :cond_7
    instance-of v1, p0, Landroidx/compose/ui/node/IntermediateLayoutModifierNode;

    if-eqz v1, :cond_8

    const/16 v1, 0x200

    .line 85
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 175
    :cond_8
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    if-eqz v1, :cond_9

    const/16 v1, 0x400

    .line 87
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 178
    :cond_9
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    if-eqz v1, :cond_a

    const/16 v1, 0x800

    .line 89
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 181
    :cond_a
    instance-of v1, p0, Landroidx/compose/ui/focus/FocusEventModifierNode;

    if-eqz v1, :cond_b

    const/16 v1, 0x1000

    .line 91
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 184
    :cond_b
    instance-of v1, p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    if-eqz v1, :cond_c

    const/16 v1, 0x2000

    .line 93
    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 187
    :cond_c
    instance-of p0, p0, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    if-eqz p0, :cond_d

    const/16 p0, 0x4000

    .line 95
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result p0

    or-int/2addr v0, p0

    :cond_d
    return v0
.end method

.method public static final getIncludeSelfInTraversal-H91voCI(I)Z
    .locals 1

    const/16 v0, 0x80

    .line 81
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final scheduleInvalidationOfAssociatedFocusTargets(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V
    .locals 4

    const/16 v0, 0x400

    .line 87
    invoke-static {v0}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 206
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1162
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v2, 0x10

    new-array v2, v2, [Landroidx/compose/ui/Modifier$Node;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 208
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    if-nez v2, :cond_0

    .line 210
    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 214
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 215
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v0

    if-nez v3, :cond_2

    .line 216
    invoke-static {v1, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui_release()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    .line 340
    instance-of v3, v2, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    .line 254
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v3

    invoke-interface {v3, v2}, Landroidx/compose/ui/focus/FocusOwner;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusTargetModifierNode;)V

    goto :goto_0

    .line 226
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getChild$ui_release()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_1

    :cond_4
    return-void

    .line 206
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final specifiesCanFocusProperty(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)Z
    .locals 1

    .line 269
    sget-object v0, Landroidx/compose/ui/node/CanFocusChecker;->INSTANCE:Landroidx/compose/ui/node/CanFocusChecker;

    invoke-virtual {v0}, Landroidx/compose/ui/node/CanFocusChecker;->reset()V

    .line 270
    invoke-interface {p0, v0}, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;->modifyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V

    .line 271
    invoke-virtual {v0}, Landroidx/compose/ui/node/CanFocusChecker;->isCanFocusSet()Z

    move-result p0

    return p0
.end method
