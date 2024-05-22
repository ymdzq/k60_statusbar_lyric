.class public final Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public alpha:F

.field public bottom:I

.field public childCount:I

.field public clazz:Ljava/lang/Class;

.field public clipChildren:Z

.field public elevation:F

.field public hashCode:I

.field public id:I

.field public left:I

.field public next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

.field public right:I

.field public scaleX:F

.field public scaleY:F

.field public scrollX:I

.field public scrollY:I

.field public top:I

.field public translateX:F

.field public translateY:F

.field public visibility:I

.field public willNotDraw:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final toProto(Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;Ljava/util/ArrayList;Lcom/android/app/viewcapture/data/ViewNode$Builder;)Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clazz:Ljava/lang/Class;

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 4
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clazz:Ljava/lang/Class;

    .line 14
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 22
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 24
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$100(Lcom/android/app/viewcapture/data/ViewNode;I)V

    .line 26
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->hashCode:I

    .line 29
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 31
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 34
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 36
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$300(Lcom/android/app/viewcapture/data/ViewNode;I)V

    .line 38
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->id:I

    .line 41
    iget-object v1, p1, Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;->mRes:Landroid/content/res/Resources;

    .line 43
    iget-object v2, p1, Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;->mNames:Landroid/util/SparseArray;

    .line 45
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/String;

    .line 51
    if-nez v3, :cond_2

    .line 53
    if-ltz v0, :cond_1

    .line 55
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const/16 v4, 0x2f

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    const-string v3, "id/0x"

    .line 88
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const-string v1, "NO_ID"

    .line 109
    :goto_0
    move-object v3, v1

    .line 111
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    :cond_2
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 115
    iget-object v0, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 118
    check-cast v0, Lcom/android/app/viewcapture/data/ViewNode;

    .line 120
    invoke-static {v0, v3}, Lcom/android/app/viewcapture/data/ViewNode;->access$1100(Lcom/android/app/viewcapture/data/ViewNode;Ljava/lang/String;)V

    .line 122
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->left:I

    .line 125
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 127
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 130
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 132
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$1400(Lcom/android/app/viewcapture/data/ViewNode;I)V

    .line 134
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->top:I

    .line 137
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 139
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 142
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 144
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$1600(Lcom/android/app/viewcapture/data/ViewNode;I)V

    .line 146
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->right:I

    .line 149
    iget v1, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->left:I

    .line 151
    sub-int/2addr v0, v1

    .line 153
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 154
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 157
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 159
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$1800(Lcom/android/app/viewcapture/data/ViewNode;I)V

    .line 161
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->bottom:I

    .line 164
    iget v1, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->top:I

    .line 166
    sub-int/2addr v0, v1

    .line 168
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 169
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 172
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 174
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$2000(Lcom/android/app/viewcapture/data/ViewNode;I)V

    .line 176
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateX:F

    .line 179
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 181
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 184
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 186
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$2600(Lcom/android/app/viewcapture/data/ViewNode;F)V

    .line 188
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->translateY:F

    .line 191
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 193
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 196
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 198
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$2800(Lcom/android/app/viewcapture/data/ViewNode;F)V

    .line 200
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollX:I

    .line 203
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 205
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 208
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 210
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$2200(Lcom/android/app/viewcapture/data/ViewNode;I)V

    .line 212
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scrollY:I

    .line 215
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 217
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 220
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 222
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$2400(Lcom/android/app/viewcapture/data/ViewNode;I)V

    .line 224
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleX:F

    .line 227
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 229
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 232
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 234
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$3000(Lcom/android/app/viewcapture/data/ViewNode;F)V

    .line 236
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->scaleY:F

    .line 239
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 241
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 244
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 246
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$3200(Lcom/android/app/viewcapture/data/ViewNode;F)V

    .line 248
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->alpha:F

    .line 251
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 253
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 256
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 258
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$3400(Lcom/android/app/viewcapture/data/ViewNode;F)V

    .line 260
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->visibility:I

    .line 263
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 265
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 268
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 270
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$4000(Lcom/android/app/viewcapture/data/ViewNode;I)V

    .line 272
    iget-boolean v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->willNotDraw:Z

    .line 275
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 277
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 280
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 282
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$3600(Lcom/android/app/viewcapture/data/ViewNode;Z)V

    .line 284
    iget v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->elevation:F

    .line 287
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 289
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 292
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 294
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$4200(Lcom/android/app/viewcapture/data/ViewNode;F)V

    .line 296
    iget-boolean v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->clipChildren:Z

    .line 299
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 301
    iget-object v1, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 304
    check-cast v1, Lcom/android/app/viewcapture/data/ViewNode;

    .line 306
    invoke-static {v1, v0}, Lcom/android/app/viewcapture/data/ViewNode;->access$3800(Lcom/android/app/viewcapture/data/ViewNode;Z)V

    .line 308
    iget-object v0, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->next:Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 311
    const/4 v1, 0x0

    .line 313
    :goto_1
    iget v2, p0, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->childCount:I

    .line 314
    if-ge v1, v2, :cond_3

    .line 316
    if-eqz v0, :cond_3

    .line 318
    invoke-static {}, Lcom/android/app/viewcapture/data/ViewNode;->newBuilder()Lcom/android/app/viewcapture/data/ViewNode$Builder;

    .line 320
    move-result-object v2

    .line 323
    invoke-virtual {v0, p1, p2, v2}, Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;->toProto(Lcom/android/app/viewcapture/ViewCapture$ViewIdProvider;Ljava/util/ArrayList;Lcom/android/app/viewcapture/data/ViewNode$Builder;)Lcom/android/app/viewcapture/ViewCapture$ViewPropertyRef;

    .line 324
    move-result-object v0

    .line 327
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 328
    iget-object v3, p3, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 331
    check-cast v3, Lcom/android/app/viewcapture/data/ViewNode;

    .line 333
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 335
    move-result-object v2

    .line 338
    check-cast v2, Lcom/android/app/viewcapture/data/ViewNode;

    .line 339
    invoke-static {v3, v2}, Lcom/android/app/viewcapture/data/ViewNode;->access$600(Lcom/android/app/viewcapture/data/ViewNode;Lcom/android/app/viewcapture/data/ViewNode;)V

    .line 341
    add-int/lit8 v1, v1, 0x1

    .line 344
    goto :goto_1

    .line 346
    :cond_3
    return-object v0
    .line 347
.end method
