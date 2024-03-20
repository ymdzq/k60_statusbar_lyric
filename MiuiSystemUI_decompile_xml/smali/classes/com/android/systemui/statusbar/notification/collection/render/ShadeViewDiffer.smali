.class public final Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

.field public final nodes:Ljava/util/Map;

.field public final rootNode:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    .line 5
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 7
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    .line 9
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->rootNode:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 12
    new-instance v0, Lkotlin/Pair;

    .line 14
    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    filled-new-array {v0}, [Lkotlin/Pair;

    .line 19
    move-result-object p1

    .line 22
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 23
    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 26
    move-result v0

    .line 29
    invoke-direct {p2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 30
    array-length v0, p1

    .line 33
    const/4 v1, 0x0

    .line 34
    :goto_0
    if-ge v1, v0, :cond_0

    .line 35
    aget-object v2, p1, v1

    .line 37
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 42
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 46
    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->nodes:Ljava/util/Map;

    .line 53
    return-void
    .line 55
.end method

.method public static final detachChildren$lambda$4$detachRecursively(Ljava/util/Map;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 8
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 10
    move-object v5, v3

    .line 12
    check-cast v5, Ljava/util/LinkedHashMap;

    .line 13
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v4

    .line 18
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 19
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 21
    invoke-interface {v6}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getChildCount()I

    .line 23
    move-result v7

    .line 26
    const/4 v8, 0x1

    .line 27
    sub-int/2addr v7, v8

    .line 28
    :goto_0
    const/4 v9, -0x1

    .line 29
    if-ge v9, v7, :cond_9

    .line 30
    invoke-interface {v6, v7}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object v9

    .line 35
    move-object v10, v0

    .line 36
    check-cast v10, Ljava/util/LinkedHashMap;

    .line 37
    invoke-virtual {v10, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v9

    .line 42
    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 43
    if-eqz v9, :cond_7

    .line 45
    iget-object v10, v9, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 47
    invoke-virtual {v5, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v11

    .line 52
    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 53
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    if-eqz v11, :cond_0

    .line 58
    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->parent:Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 60
    if-eqz v11, :cond_0

    .line 62
    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->getNode(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;)Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 64
    move-result-object v11

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    const/4 v11, 0x0

    .line 69
    :goto_1
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    move-result v13

    .line 73
    if-nez v13, :cond_6

    .line 74
    const/4 v13, 0x0

    .line 76
    if-nez v11, :cond_1

    .line 77
    move v14, v8

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    move v14, v13

    .line 81
    :goto_2
    if-eqz v14, :cond_2

    .line 82
    iget-object v15, v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->nodes:Ljava/util/Map;

    .line 84
    invoke-interface {v15, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_2
    if-eqz v14, :cond_3

    .line 89
    if-nez v4, :cond_3

    .line 91
    invoke-interface {v10}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->offerToKeepInParentForAnimation()Z

    .line 93
    move-result v15

    .line 96
    if-eqz v15, :cond_3

    .line 97
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 99
    move-result-object v11

    .line 102
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 103
    move-result-object v13

    .line 106
    xor-int/lit8 v14, v14, 0x1

    .line 107
    iget-object v15, v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    .line 109
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    sget-object v8, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 114
    sget-object v12, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logSkipDetachingChild$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logSkipDetachingChild$2;

    .line 116
    const-string v2, "NotifViewManager"

    .line 118
    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 120
    move-object/from16 v16, v5

    .line 122
    const/4 v5, 0x0

    .line 124
    invoke-virtual {v15, v2, v8, v12, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 125
    move-result-object v2

    .line 128
    invoke-interface {v2, v11}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 129
    invoke-interface {v2, v13}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 132
    invoke-interface {v2, v14}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 135
    const/4 v5, 0x1

    .line 138
    invoke-interface {v2, v5}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 139
    invoke-virtual {v15, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 142
    goto :goto_5

    .line 145
    :cond_3
    move-object/from16 v16, v5

    .line 146
    move v5, v8

    .line 148
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    .line 149
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 151
    move-result-object v18

    .line 154
    xor-int/lit8 v8, v14, 0x1

    .line 155
    if-nez v4, :cond_4

    .line 157
    move/from16 v22, v5

    .line 159
    goto :goto_3

    .line 161
    :cond_4
    move/from16 v22, v13

    .line 162
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 164
    move-result-object v19

    .line 167
    if-eqz v11, :cond_5

    .line 168
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 170
    move-result-object v11

    .line 173
    move-object/from16 v20, v11

    .line 174
    goto :goto_4

    .line 176
    :cond_5
    const/16 v20, 0x0

    .line 177
    :goto_4
    move-object/from16 v17, v2

    .line 179
    move/from16 v21, v8

    .line 181
    invoke-virtual/range {v17 .. v22}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->logDetachingChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 183
    invoke-interface {v6, v10, v8}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->removeChild(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Z)V

    .line 186
    invoke-interface {v10}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->onViewRemoved()V

    .line 189
    const/4 v2, 0x0

    .line 192
    iput-object v2, v9, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->parent:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 193
    goto :goto_5

    .line 195
    :cond_6
    move-object/from16 v16, v5

    .line 196
    move v5, v8

    .line 198
    :goto_5
    invoke-interface {v10}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getChildCount()I

    .line 199
    move-result v2

    .line 202
    if-lez v2, :cond_8

    .line 203
    invoke-static {v0, v1, v9, v3}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->detachChildren$lambda$4$detachRecursively(Ljava/util/Map;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V

    .line 205
    goto :goto_6

    .line 208
    :cond_7
    move-object/from16 v16, v5

    .line 209
    move v5, v8

    .line 211
    :cond_8
    :goto_6
    add-int/lit8 v7, v7, -0x1

    .line 212
    move-object/from16 v2, p2

    .line 214
    move v8, v5

    .line 216
    move-object/from16 v5, v16

    .line 217
    goto/16 :goto_0

    .line 219
    :cond_9
    return-void
    .line 221
.end method

.method public static registerNodes(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 8
    if-nez v0, :cond_1

    .line 10
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    .line 15
    check-cast p0, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    move-result v0

    .line 22
    xor-int/lit8 v0, v0, 0x1

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 41
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->registerNodes(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Ljava/util/Map;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    return-void

    .line 47
    :cond_1
    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/render/DuplicateNodeException;

    .line 48
    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 53
    const-string v0, "Node "

    .line 54
    const-string v1, " appears more than once"

    .line 56
    invoke-static {v0, p1, v1}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/DuplicateNodeException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0
    .line 65
.end method


# virtual methods
.method public final applySpec(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    move-result v2

    .line 7
    const-string v3, " does not match own root at "

    .line 8
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->rootNode:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 10
    const-string v5, "Tree root "

    .line 12
    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 14
    if-eqz v2, :cond_1

    .line 16
    const-string v2, "ShadeViewDiffer.applySpec"

    .line 18
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 20
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->treeToMap(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;)Ljava/util/Map;

    .line 23
    move-result-object p1

    .line 26
    iget-object v2, v4, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 27
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->detachChildren(Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V

    .line 35
    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->attachChildren(Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    invoke-interface {v6}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 50
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 78
    throw p0

    .line 81
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->treeToMap(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;)Ljava/util/Map;

    .line 82
    move-result-object p1

    .line 85
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 86
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->detachChildren(Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V

    .line 94
    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->attachChildren(Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V

    .line 97
    :goto_0
    return-void

    .line 100
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 101
    invoke-interface {v6}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 106
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 110
    invoke-static {v5, p1, v3, v0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    throw p0
    .line 118
.end method

.method public final attachChildren(Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    const-wide/16 v3, 0x1000

    .line 8
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 10
    move-result v5

    .line 13
    const-string v6, "NotifViewManager"

    .line 14
    const-string v7, " but is actually "

    .line 16
    const-string v8, " should have parent "

    .line 18
    const-string v9, "Child "

    .line 20
    const-string v10, "Required value was null."

    .line 22
    const/4 v11, 0x0

    .line 24
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    .line 25
    if-eqz v5, :cond_8

    .line 27
    const-string v5, "attachChildren"

    .line 29
    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 31
    :try_start_0
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    iget-object v13, v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 36
    :try_start_1
    move-object v14, v2

    .line 38
    check-cast v14, Ljava/util/LinkedHashMap;

    .line 39
    invoke-virtual {v14, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    if-eqz v5, :cond_7

    .line 45
    :try_start_2
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 47
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    .line 49
    check-cast v5, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v5

    .line 56
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v10

    .line 60
    if-eqz v10, :cond_6

    .line 61
    add-int/lit8 v10, v11, 0x1

    .line 63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v14

    .line 68
    check-cast v14, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    :try_start_3
    invoke-interface {v13, v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getChildAt(I)Landroid/view/View;

    .line 71
    move-result-object v3

    .line 74
    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->getNode(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;)Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 75
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    iget-object v15, v4, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 79
    move-object/from16 v16, v5

    .line 81
    :try_start_4
    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    .line 83
    move-result-object v5

    .line 86
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    move-result v3

    .line 90
    if-nez v3, :cond_4

    .line 91
    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->removeFromParentIfKeptForAnimation()Z

    .line 93
    move-result v3

    .line 96
    if-eqz v3, :cond_0

    .line 97
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    .line 99
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 101
    move-result-object v18

    .line 104
    const/16 v21, 0x0

    .line 105
    const/16 v22, 0x1

    .line 107
    const/16 v19, 0x0

    .line 109
    const/16 v20, 0x0

    .line 111
    move-object/from16 v17, v3

    .line 113
    invoke-virtual/range {v17 .. v22}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->logDetachingChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 115
    :cond_0
    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->parent:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 118
    if-nez v3, :cond_1

    .line 120
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 122
    move-result-object v3

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 126
    move-result-object v5

    .line 129
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    move/from16 v17, v10

    .line 133
    sget-object v10, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 135
    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logAttachingChild$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logAttachingChild$2;

    .line 137
    iget-object v2, v12, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 139
    move-object/from16 v18, v14

    .line 141
    const/4 v14, 0x0

    .line 143
    invoke-virtual {v2, v6, v10, v0, v14}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 144
    move-result-object v0

    .line 147
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 148
    invoke-interface {v0, v5}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 151
    invoke-interface {v0, v11}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 154
    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 157
    invoke-interface {v13, v15, v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->addChildAt(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V

    .line 160
    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->onViewAdded()V

    .line 163
    iput-object v1, v4, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->parent:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 166
    goto :goto_2

    .line 168
    :cond_1
    move/from16 v17, v10

    .line 169
    move-object/from16 v18, v14

    .line 171
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    move-result v0

    .line 176
    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 183
    move-result-object v2

    .line 186
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 190
    sget-object v5, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logMovingChild$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logMovingChild$2;

    .line 192
    iget-object v10, v12, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 194
    const/4 v14, 0x0

    .line 196
    invoke-virtual {v10, v6, v3, v5, v14}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 197
    move-result-object v3

    .line 200
    invoke-interface {v3, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 201
    invoke-interface {v3, v2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 204
    invoke-interface {v3, v11}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 207
    invoke-virtual {v10, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 210
    invoke-interface {v13, v15, v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->moveChildTo(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V

    .line 213
    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->onViewMoved()V

    .line 216
    goto :goto_2

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 220
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 222
    move-result-object v2

    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 226
    move-result-object v1

    .line 229
    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->parent:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 230
    if-eqz v3, :cond_3

    .line 232
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 234
    move-result-object v3

    .line 237
    goto :goto_1

    .line 238
    :cond_3
    const/4 v3, 0x0

    .line 239
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 240
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    move-result-object v1

    .line 266
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 267
    throw v0

    .line 270
    :cond_4
    move/from16 v17, v10

    .line 271
    move-object/from16 v18, v14

    .line 273
    :goto_2
    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->resetKeepInParentForAnimation()V

    .line 275
    move-object/from16 v14, v18

    .line 278
    iget-object v0, v14, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    .line 280
    check-cast v0, Ljava/util/ArrayList;

    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 284
    move-result v0

    .line 287
    xor-int/lit8 v0, v0, 0x1

    .line 288
    if-eqz v0, :cond_5

    .line 290
    move-object/from16 v0, p0

    .line 292
    move-object/from16 v2, p2

    .line 294
    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->attachChildren(Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    goto :goto_3

    .line 299
    :cond_5
    move-object/from16 v0, p0

    .line 300
    move-object/from16 v2, p2

    .line 302
    :goto_3
    const-wide/16 v3, 0x1000

    .line 304
    move-object/from16 v5, v16

    .line 306
    move/from16 v11, v17

    .line 308
    goto/16 :goto_0

    .line 310
    :cond_6
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 312
    goto/16 :goto_8

    .line 315
    :cond_7
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 317
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 319
    move-result-object v1

    .line 322
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 323
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 326
    :catchall_0
    move-exception v0

    .line 327
    const-wide/16 v1, 0x1000

    .line 328
    goto :goto_4

    .line 330
    :catchall_1
    move-exception v0

    .line 331
    move-wide v1, v3

    .line 332
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 333
    throw v0

    .line 336
    :cond_8
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 337
    move-object v4, v2

    .line 339
    check-cast v4, Ljava/util/LinkedHashMap;

    .line 340
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    move-result-object v3

    .line 345
    if-eqz v3, :cond_10

    .line 346
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 348
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    .line 350
    check-cast v3, Ljava/util/ArrayList;

    .line 352
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 354
    move-result-object v3

    .line 357
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 358
    move-result v4

    .line 361
    if-eqz v4, :cond_f

    .line 362
    add-int/lit8 v4, v11, 0x1

    .line 364
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 366
    move-result-object v5

    .line 369
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 370
    iget-object v10, v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 372
    invoke-interface {v10, v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getChildAt(I)Landroid/view/View;

    .line 374
    move-result-object v13

    .line 377
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->getNode(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;)Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 378
    move-result-object v14

    .line 381
    iget-object v15, v14, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 382
    move-object/from16 v16, v3

    .line 384
    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    .line 386
    move-result-object v3

    .line 389
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 390
    move-result v3

    .line 393
    if-nez v3, :cond_d

    .line 394
    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->removeFromParentIfKeptForAnimation()Z

    .line 396
    move-result v3

    .line 399
    if-eqz v3, :cond_9

    .line 400
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    .line 402
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 404
    move-result-object v18

    .line 407
    const/16 v21, 0x0

    .line 408
    const/16 v22, 0x1

    .line 410
    const/16 v19, 0x0

    .line 412
    const/16 v20, 0x0

    .line 414
    move-object/from16 v17, v3

    .line 416
    invoke-virtual/range {v17 .. v22}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->logDetachingChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 418
    :cond_9
    iget-object v3, v14, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->parent:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 421
    if-nez v3, :cond_a

    .line 423
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 425
    move-result-object v3

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 429
    move-result-object v13

    .line 432
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    move/from16 v17, v4

    .line 436
    sget-object v4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 438
    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logAttachingChild$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logAttachingChild$2;

    .line 440
    iget-object v2, v12, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 442
    move-object/from16 v18, v5

    .line 444
    const/4 v5, 0x0

    .line 446
    invoke-virtual {v2, v6, v4, v0, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 447
    move-result-object v0

    .line 450
    invoke-interface {v0, v3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 451
    invoke-interface {v0, v13}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 454
    invoke-interface {v0, v11}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 457
    invoke-virtual {v2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 460
    invoke-interface {v10, v15, v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->addChildAt(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V

    .line 463
    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->onViewAdded()V

    .line 466
    iput-object v1, v14, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->parent:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 469
    goto :goto_6

    .line 471
    :cond_a
    move/from16 v17, v4

    .line 472
    move-object/from16 v18, v5

    .line 474
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 476
    move-result v0

    .line 479
    if-eqz v0, :cond_b

    .line 480
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 482
    move-result-object v0

    .line 485
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 486
    move-result-object v2

    .line 489
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 493
    sget-object v4, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logMovingChild$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logMovingChild$2;

    .line 495
    iget-object v5, v12, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 497
    const/4 v13, 0x0

    .line 499
    invoke-virtual {v5, v6, v3, v4, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 500
    move-result-object v3

    .line 503
    invoke-interface {v3, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 504
    invoke-interface {v3, v2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 507
    invoke-interface {v3, v11}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 510
    invoke-virtual {v5, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 513
    invoke-interface {v10, v15, v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->moveChildTo(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V

    .line 516
    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->onViewMoved()V

    .line 519
    goto :goto_6

    .line 522
    :cond_b
    const/4 v0, 0x0

    .line 523
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 524
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 526
    move-result-object v3

    .line 529
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 530
    move-result-object v1

    .line 533
    iget-object v4, v14, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->parent:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 534
    if-eqz v4, :cond_c

    .line 536
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->getLabel()Ljava/lang/String;

    .line 538
    move-result-object v0

    .line 541
    :cond_c
    invoke-static {v9, v3, v8, v1, v7}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    move-result-object v1

    .line 545
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    move-result-object v0

    .line 552
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 553
    throw v2

    .line 556
    :cond_d
    move/from16 v17, v4

    .line 557
    move-object/from16 v18, v5

    .line 559
    :goto_6
    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->resetKeepInParentForAnimation()V

    .line 561
    move-object/from16 v5, v18

    .line 564
    iget-object v0, v5, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    .line 566
    check-cast v0, Ljava/util/ArrayList;

    .line 568
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 570
    move-result v0

    .line 573
    xor-int/lit8 v0, v0, 0x1

    .line 574
    if-eqz v0, :cond_e

    .line 576
    move-object/from16 v0, p0

    .line 578
    move-object/from16 v2, p2

    .line 580
    invoke-virtual {v0, v14, v2}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->attachChildren(Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V

    .line 582
    goto :goto_7

    .line 585
    :cond_e
    move-object/from16 v0, p0

    .line 586
    move-object/from16 v2, p2

    .line 588
    :goto_7
    move-object/from16 v3, v16

    .line 590
    move/from16 v11, v17

    .line 592
    goto/16 :goto_5

    .line 594
    :cond_f
    :goto_8
    return-void

    .line 596
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 597
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 599
    move-result-object v1

    .line 602
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 603
    throw v0
    .line 606
.end method

.method public final detachChildren(Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    move-result v2

    .line 7
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->nodes:Ljava/util/Map;

    .line 8
    const/16 v4, 0x10

    .line 10
    if-eqz v2, :cond_2

    .line 12
    const-string v2, "detachChildren"

    .line 14
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    :try_start_0
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 19
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 21
    move-result-object v2

    .line 24
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 25
    move-result v3

    .line 28
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 29
    move-result v3

    .line 32
    if-ge v3, v4, :cond_0

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    move v4, v3

    .line 36
    :goto_0
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 37
    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 39
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v2

    .line 45
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 55
    move-object v5, v4

    .line 56
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 57
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 59
    invoke-interface {v5}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    .line 61
    move-result-object v5

    .line 64
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    goto :goto_1

    .line 68
    :cond_1
    invoke-static {v3, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->detachChildren$lambda$4$detachRecursively(Ljava/util/Map;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 72
    goto :goto_4

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 77
    throw p0

    .line 80
    :cond_2
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 81
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 83
    move-result-object v0

    .line 86
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 87
    move-result v1

    .line 90
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 91
    move-result v1

    .line 94
    if-ge v1, v4, :cond_3

    .line 95
    goto :goto_2

    .line 97
    :cond_3
    move v4, v1

    .line 98
    :goto_2
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 99
    invoke-direct {v1, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 101
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object v0

    .line 107
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v2

    .line 111
    if-eqz v2, :cond_4

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v2

    .line 117
    move-object v3, v2

    .line 118
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 119
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 121
    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    .line 123
    move-result-object v3

    .line 126
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    goto :goto_3

    .line 130
    :cond_4
    invoke-static {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->detachChildren$lambda$4$detachRecursively(Ljava/util/Map;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V

    .line 131
    :goto_4
    return-void
    .line 134
.end method

.method public final getNode(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;)Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->nodes:Ljava/util/Map;

    .line 2
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 4
    move-object v1, p0

    .line 6
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 13
    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    .line 17
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 19
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    .line 21
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    return-object v0
    .line 27
.end method

.method public final treeToMap(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;)Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->registerNodes(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/collection/render/DuplicateNodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v1, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 17
    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logDuplicateNodeInTree$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logDuplicateNodeInTree$2;

    .line 19
    const/4 v3, 0x0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 22
    const-string v4, "NotifViewManager"

    .line 24
    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 33
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v3, ""

    .line 42
    invoke-static {p1, v2, v3}, Lcom/android/systemui/statusbar/notification/collection/render/NodeControllerKt;->treeSpecToStrHelper(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 50
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 54
    throw v0
    .line 57
.end method
