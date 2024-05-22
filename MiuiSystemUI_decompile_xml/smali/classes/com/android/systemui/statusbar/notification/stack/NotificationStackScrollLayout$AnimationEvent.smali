.class public Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field public static final LENGTHS:[I


# instance fields
.field public final animationType:I

.field public final filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

.field public headsUpFromBottom:Z

.field public final length:J

.field public final mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public viewAfterChangingView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 4
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 8
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 10
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 12
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 14
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 16
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    .line 18
    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 20
    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 22
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 25
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 27
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 29
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 31
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 33
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    .line 35
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 37
    invoke-direct {v3}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 39
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 42
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 44
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 46
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 48
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    .line 50
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 52
    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 54
    iput-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 57
    iput-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 59
    iput-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 61
    iput-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    .line 63
    iput-boolean v1, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 65
    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 67
    invoke-direct {v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 69
    iput-boolean v1, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 72
    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 74
    invoke-direct {v6}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 76
    iput-boolean v1, v6, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    .line 79
    new-instance v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 81
    invoke-direct {v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 83
    iput-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 86
    iput-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 88
    iput-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 90
    iput-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 92
    iput-boolean v1, v7, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 94
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 96
    invoke-direct {v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 98
    iput-boolean v1, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 101
    iput-boolean v1, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 103
    iput-boolean v1, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 105
    iput-boolean v1, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    .line 107
    iput-boolean v1, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 109
    iput-boolean v1, v8, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    .line 111
    new-instance v9, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 113
    invoke-direct {v9}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 115
    iput-boolean v1, v9, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    .line 118
    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 120
    invoke-direct {v10}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 122
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 125
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 127
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 129
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 131
    new-instance v11, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 133
    invoke-direct {v11}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 135
    iput-boolean v1, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 138
    iput-boolean v1, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 140
    iput-boolean v1, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 142
    iput-boolean v1, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 144
    iput-boolean v1, v11, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 146
    new-instance v12, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 148
    invoke-direct {v12}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 150
    iput-boolean v1, v12, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 153
    iput-boolean v1, v12, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 155
    iput-boolean v1, v12, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 157
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateScale()V

    .line 159
    iput-boolean v1, v12, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 162
    iput-boolean v1, v12, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 164
    new-instance v13, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 166
    invoke-direct {v13}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 168
    iput-boolean v1, v13, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 171
    iput-boolean v1, v13, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 173
    iput-boolean v1, v13, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 175
    iput-boolean v1, v13, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 177
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateScale()V

    .line 179
    iput-boolean v1, v13, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 182
    iput-boolean v1, v13, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    .line 184
    new-instance v14, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 186
    invoke-direct {v14}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 188
    iput-boolean v1, v14, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 191
    iput-boolean v1, v14, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 193
    iput-boolean v1, v14, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 195
    iput-boolean v1, v14, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 197
    iput-boolean v1, v14, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->hasDelays:Z

    .line 199
    new-instance v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 201
    invoke-direct {v15}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 203
    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 206
    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 208
    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 210
    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 212
    move-object/from16 v16, v15

    .line 214
    new-instance v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 216
    invoke-direct {v15}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 218
    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 221
    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateDimmed:Z

    .line 223
    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHideSensitive:Z

    .line 225
    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 227
    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 229
    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 231
    iput-boolean v1, v15, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 233
    move-object v1, v2

    .line 235
    move-object v2, v3

    .line 236
    move-object v3, v4

    .line 237
    move-object v4, v5

    .line 238
    move-object v5, v6

    .line 239
    move-object v6, v7

    .line 240
    move-object v7, v8

    .line 241
    move-object v8, v9

    .line 242
    move-object v9, v10

    .line 243
    move-object v10, v11

    .line 244
    move-object v11, v12

    .line 245
    move-object v12, v13

    .line 246
    move-object v13, v14

    .line 247
    move-object/from16 v14, v16

    .line 248
    filled-new-array/range {v0 .. v15}, [Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 250
    move-result-object v0

    .line 253
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 254
    const/16 v0, 0x10

    .line 256
    new-array v0, v0, [I

    .line 258
    fill-array-data v0, :array_0

    .line 260
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    .line 263
    return-void

    .line 265
    :array_0
    .array-data 4
        0x1d0
        0x1d0
        0x168
        0x168
        0xdc
        0xdc
        0x168
        0x1c0
        0x168
        0x168
        0x168
        0x190
        0x190
        0x190
        0x168
        0x168
    .end array-data
    .line 266
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    aget v0, v0, p2

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJ)V
    .locals 7

    .line 2
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    aget-object v6, v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 5
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->mChangingView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 6
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 7
    iput-wide p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    .line 8
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    return-void
.end method
