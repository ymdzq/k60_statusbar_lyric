.class public final Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mZenModeViewController:Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;

.field public final mediaContainerController:Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;

.field public final sectionHeaderVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;

.field public final sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

.field public final viewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->mediaContainerController:Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->sectionHeaderVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->mZenModeViewController:Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->viewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    .line 13
    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final buildNodeSpec(Lcom/android/systemui/statusbar/notification/collection/render/RootNodeController;Ljava/util/List;)Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;
    .locals 13

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    move-result v2

    .line 7
    const-string v3, " has been duplicated"

    .line 8
    const-string v4, "Section "

    .line 10
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->mediaContainerController:Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;

    .line 12
    const/4 v6, 0x0

    .line 14
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->mZenModeViewController:Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;

    .line 15
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->sectionHeaderVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;

    .line 17
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    .line 19
    const/4 v10, 0x1

    .line 21
    const/4 v11, 0x0

    .line 22
    if-eqz v2, :cond_8

    .line 23
    const-string v2, "NodeSpecBuilder.buildNodeSpec"

    .line 25
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 27
    :try_start_0
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 30
    invoke-direct {v2, v11, p1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    .line 32
    iget-object p1, v2, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    .line 35
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->context:Landroid/content/Context;

    .line 37
    invoke-static {v9}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    .line 39
    move-result v9

    .line 42
    if-eqz v9, :cond_0

    .line 43
    new-instance v9, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 45
    invoke-direct {v9, v2, v5}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    .line 47
    move-object v5, p1

    .line 50
    check-cast v5, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 56
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 58
    iget-boolean v8, v8, Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;->sectionHeadersVisible:Z

    .line 61
    new-instance v9, Ljava/util/ArrayList;

    .line 63
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 68
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 70
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 73
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 75
    new-instance v9, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 78
    invoke-direct {v9, v2, v7}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    .line 80
    move-object v7, p1

    .line 83
    check-cast v7, Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object p2

    .line 92
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v7

    .line 96
    if-eqz v7, :cond_7

    .line 97
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 102
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 103
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 105
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 107
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->headerController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 112
    :try_start_1
    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 114
    move-result v9

    .line 117
    if-nez v9, :cond_6

    .line 118
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    move-result v9

    .line 123
    if-nez v9, :cond_5

    .line 124
    if-eqz v11, :cond_1

    .line 126
    iget-object v9, v11, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->headerController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 128
    goto :goto_1

    .line 130
    :cond_1
    const/4 v9, 0x0

    .line 131
    :goto_1
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    move-result v9

    .line 135
    if-nez v9, :cond_4

    .line 136
    if-eqz v8, :cond_4

    .line 138
    if-nez v6, :cond_2

    .line 140
    iget v6, v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->bucket:I

    .line 142
    if-ne v6, v10, :cond_3

    .line 144
    :cond_2
    if-eqz v7, :cond_3

    .line 146
    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 148
    invoke-direct {v6, v2, v7}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    .line 150
    move-object v7, p1

    .line 153
    check-cast v7, Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_3
    move v6, v10

    .line 159
    :cond_4
    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    move-object v11, v1

    .line 163
    :cond_5
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->buildNotifNode(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 164
    move-result-object v0

    .line 167
    move-object v1, p1

    .line 168
    check-cast v1, Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    const-wide/16 v0, 0x1000

    .line 174
    goto :goto_0

    .line 176
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    .line 177
    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->label:Ljava/lang/String;

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object p1

    .line 198
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 199
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :cond_7
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 203
    goto/16 :goto_4

    .line 206
    :catchall_0
    move-exception p0

    .line 208
    const-wide/16 p1, 0x1000

    .line 209
    invoke-static {p1, p2}, Landroid/os/Trace;->traceEnd(J)V

    .line 211
    throw p0

    .line 214
    :cond_8
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 215
    const/4 v0, 0x0

    .line 217
    invoke-direct {v2, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    .line 218
    iget-object p1, v9, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->context:Landroid/content/Context;

    .line 221
    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    .line 223
    move-result p1

    .line 226
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    .line 227
    if-eqz p1, :cond_9

    .line 229
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 231
    invoke-direct {p1, v2, v5}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    .line 233
    move-object v5, v1

    .line 236
    check-cast v5, Ljava/util/ArrayList;

    .line 237
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_9
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 242
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 244
    iget-boolean v5, v8, Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;->sectionHeadersVisible:Z

    .line 247
    new-instance v8, Ljava/util/ArrayList;

    .line 249
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 251
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 254
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 256
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 259
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 261
    new-instance v8, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 264
    invoke-direct {v8, v2, v7}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    .line 266
    check-cast v1, Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 274
    move-result-object p2

    .line 277
    move-object v7, v0

    .line 278
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    move-result v8

    .line 282
    if-eqz v8, :cond_10

    .line 283
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    move-result-object v8

    .line 288
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 289
    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 291
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 293
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 295
    invoke-interface {p1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 298
    move-result v11

    .line 301
    if-nez v11, :cond_f

    .line 302
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    move-result v11

    .line 307
    if-nez v11, :cond_e

    .line 308
    if-eqz v7, :cond_a

    .line 310
    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->headerController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 312
    goto :goto_3

    .line 314
    :cond_a
    move-object v11, v0

    .line 315
    :goto_3
    iget-object v12, v9, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->headerController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 316
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 318
    move-result v11

    .line 321
    if-nez v11, :cond_d

    .line 322
    if-eqz v5, :cond_d

    .line 324
    if-nez v6, :cond_b

    .line 326
    iget v6, v9, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->bucket:I

    .line 328
    if-ne v6, v10, :cond_c

    .line 330
    :cond_b
    if-eqz v12, :cond_c

    .line 332
    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 334
    invoke-direct {v6, v2, v12}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    .line 336
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_c
    move v6, v10

    .line 342
    :cond_d
    invoke-interface {p1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    move-object v7, v9

    .line 346
    :cond_e
    invoke-virtual {p0, v2, v8}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->buildNotifNode(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 347
    move-result-object v8

    .line 350
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    goto :goto_2

    .line 354
    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    .line 357
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    iget-object p2, v9, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->label:Ljava/lang/String;

    .line 362
    invoke-static {p1, p2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    move-result-object p1

    .line 367
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 368
    throw p0

    .line 371
    :cond_10
    :goto_4
    return-object v2
    .line 372
.end method

.method public final buildNotifNode(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;
    .locals 3

    .line 1
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->viewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 8
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;->requireNodeController(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;

    .line 10
    move-result-object p2

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    .line 14
    goto :goto_1

    .line 17
    :cond_0
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 18
    if-eqz v0, :cond_3

    .line 20
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 22
    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 24
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 26
    if-eqz v2, :cond_2

    .line 28
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;->requireNodeController(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;

    .line 30
    move-result-object v1

    .line 33
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    .line 34
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 37
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p1

    .line 42
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object p2

    .line 52
    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 53
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    .line 55
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->buildNotifNode(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    .line 57
    move-result-object p2

    .line 60
    check-cast v1, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    move-object p0, v0

    .line 67
    :goto_1
    return-object p0

    .line 68
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 69
    const-string p1, "Required value was null."

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p0

    .line 80
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    const-string v0, "Unexpected entry: "

    .line 85
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0
    .line 100
.end method
