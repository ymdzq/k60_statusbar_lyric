.class public final enum Lcom/android/systemui/screenshot/ScreenshotEvent;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_CAPTURE_FAILED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_DISMISSED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_EDIT_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_EXPLICIT_DISMISSAL:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_INTERACTION_TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_CACHED_IMAGE_LOADED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_FINISHED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_STARTED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_COMPLETED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_EDIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_EXIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_FAILURE:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_IMPRESSION:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_REQUESTED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_SHARE:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_LONG_SCREENSHOT_STARTED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_PREVIEW_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REENTERED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_GLOBAL_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_KEY_CHORD:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_KEY_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_OVERVIEW:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_REQUESTED_VENDOR_GESTURE:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SAVED_TO_WORK_PROFILE:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SHARE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SMART_ACTION_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

.field public static final enum SCREENSHOT_SWIPE_DISMISSED:Lcom/android/systemui/screenshot/ScreenshotEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 37

    .line 1
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 2
    move-object v0, v1

    .line 4
    const/16 v2, 0x12e

    .line 5
    const-string v3, "SCREENSHOT_REQUESTED_GLOBAL_ACTIONS"

    .line 7
    const/4 v4, 0x0

    .line 9
    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 10
    sput-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_GLOBAL_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 13
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 15
    move-object v1, v2

    .line 17
    const/16 v3, 0x12f

    .line 18
    const-string v4, "SCREENSHOT_REQUESTED_KEY_CHORD"

    .line 20
    const/4 v5, 0x1

    .line 22
    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 23
    sput-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_CHORD:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 26
    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 28
    move-object v2, v3

    .line 30
    const/16 v4, 0x180

    .line 31
    const-string v5, "SCREENSHOT_REQUESTED_KEY_OTHER"

    .line 33
    const/4 v6, 0x2

    .line 35
    invoke-direct {v3, v5, v6, v4}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 36
    sput-object v3, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 39
    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 41
    move-object v3, v4

    .line 43
    const/16 v5, 0x130

    .line 44
    const-string v6, "SCREENSHOT_REQUESTED_OVERVIEW"

    .line 46
    const/4 v7, 0x3

    .line 48
    invoke-direct {v4, v6, v7, v5}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v4, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OVERVIEW:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 52
    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 54
    move-object v4, v5

    .line 56
    const/16 v6, 0x17e

    .line 57
    const-string v7, "SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS"

    .line 59
    const/4 v8, 0x4

    .line 61
    invoke-direct {v5, v7, v8, v6}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 62
    sput-object v5, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 65
    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 67
    move-object v5, v6

    .line 69
    const/16 v7, 0x27e

    .line 70
    const-string v8, "SCREENSHOT_REQUESTED_VENDOR_GESTURE"

    .line 72
    const/4 v9, 0x5

    .line 74
    invoke-direct {v6, v8, v9, v7}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 75
    sput-object v6, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_VENDOR_GESTURE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 78
    new-instance v7, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 80
    move-object v6, v7

    .line 82
    const/16 v8, 0x131

    .line 83
    const-string v9, "SCREENSHOT_REQUESTED_OTHER"

    .line 85
    const/4 v10, 0x6

    .line 87
    invoke-direct {v7, v9, v10, v8}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 88
    sput-object v7, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 91
    new-instance v8, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 93
    move-object v7, v8

    .line 95
    const/16 v9, 0x132

    .line 96
    const-string v10, "SCREENSHOT_SAVED"

    .line 98
    const/4 v11, 0x7

    .line 100
    invoke-direct {v8, v10, v11, v9}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 101
    sput-object v8, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 104
    new-instance v9, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 106
    move-object v8, v9

    .line 108
    const/16 v10, 0x150

    .line 109
    const-string v11, "SCREENSHOT_NOT_SAVED"

    .line 111
    const/16 v12, 0x8

    .line 113
    invoke-direct {v9, v11, v12, v10}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 115
    sput-object v9, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_NOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 118
    new-instance v10, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 120
    move-object v9, v10

    .line 122
    const/16 v11, 0x501

    .line 123
    const-string v12, "SCREENSHOT_CAPTURE_FAILED"

    .line 125
    const/16 v13, 0x9

    .line 127
    invoke-direct {v10, v12, v13, v11}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 129
    sput-object v10, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_CAPTURE_FAILED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 132
    new-instance v11, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 134
    move-object v10, v11

    .line 136
    const/16 v12, 0x133

    .line 137
    const-string v13, "SCREENSHOT_PREVIEW_TAPPED"

    .line 139
    const/16 v14, 0xa

    .line 141
    invoke-direct {v11, v13, v14, v12}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 143
    sput-object v11, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_PREVIEW_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 146
    new-instance v12, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 148
    move-object v11, v12

    .line 150
    const/16 v13, 0x134

    .line 151
    const-string v14, "SCREENSHOT_EDIT_TAPPED"

    .line 153
    const/16 v15, 0xb

    .line 155
    invoke-direct {v12, v14, v15, v13}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 157
    sput-object v12, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EDIT_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 160
    new-instance v13, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 162
    move-object v12, v13

    .line 164
    const/16 v14, 0x135

    .line 165
    const-string v15, "SCREENSHOT_SHARE_TAPPED"

    .line 167
    move-object/from16 v33, v0

    .line 169
    const/16 v0, 0xc

    .line 171
    invoke-direct {v13, v15, v0, v14}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 173
    sput-object v13, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SHARE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 176
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 178
    move-object v13, v0

    .line 180
    const/16 v14, 0x176

    .line 181
    const-string v15, "SCREENSHOT_SMART_ACTION_TAPPED"

    .line 183
    move-object/from16 v34, v1

    .line 185
    const/16 v1, 0xd

    .line 187
    invoke-direct {v0, v15, v1, v14}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 189
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SMART_ACTION_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 192
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 194
    move-object v14, v0

    .line 196
    const/16 v1, 0x175

    .line 197
    const-string v15, "SCREENSHOT_SCROLL_TAPPED"

    .line 199
    move-object/from16 v35, v2

    .line 201
    const/16 v2, 0xe

    .line 203
    invoke-direct {v0, v15, v2, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 205
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 208
    move-object v15, v0

    .line 210
    const/16 v1, 0x136

    .line 211
    const-string v2, "SCREENSHOT_INTERACTION_TIMEOUT"

    .line 213
    move-object/from16 v36, v3

    .line 215
    const/16 v3, 0xf

    .line 217
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 219
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_INTERACTION_TIMEOUT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 222
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 224
    move-object/from16 v16, v0

    .line 226
    const/16 v1, 0x137

    .line 228
    const-string v2, "SCREENSHOT_EXPLICIT_DISMISSAL"

    .line 230
    const/16 v3, 0x10

    .line 232
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 234
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EXPLICIT_DISMISSAL:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 237
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 239
    move-object/from16 v17, v0

    .line 241
    const/16 v1, 0x290

    .line 243
    const-string v2, "SCREENSHOT_SWIPE_DISMISSED"

    .line 245
    const/16 v3, 0x11

    .line 247
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 249
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SWIPE_DISMISSED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 252
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 254
    move-object/from16 v18, v0

    .line 256
    const/16 v1, 0x434

    .line 258
    const-string v2, "SCREENSHOT_DISMISSED_OTHER"

    .line 260
    const/16 v3, 0x12

    .line 262
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 264
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_DISMISSED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 267
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 269
    move-object/from16 v19, v0

    .line 271
    const/16 v1, 0x280

    .line 273
    const-string v2, "SCREENSHOT_REENTERED"

    .line 275
    const/16 v3, 0x13

    .line 277
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 279
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REENTERED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 282
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 284
    move-object/from16 v20, v0

    .line 286
    const/16 v1, 0x2af

    .line 288
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_IMPRESSION"

    .line 290
    const/16 v3, 0x14

    .line 292
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 294
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_IMPRESSION:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 297
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 299
    move-object/from16 v21, v0

    .line 301
    const/16 v1, 0x2b0

    .line 303
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_REQUESTED"

    .line 305
    const/16 v3, 0x15

    .line 307
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 309
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_REQUESTED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 312
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 314
    move-object/from16 v22, v0

    .line 316
    const/16 v1, 0x2b1

    .line 318
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_SHARE"

    .line 320
    const/16 v3, 0x16

    .line 322
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 324
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_SHARE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 327
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 329
    move-object/from16 v23, v0

    .line 331
    const/16 v1, 0x2b2

    .line 333
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_EDIT"

    .line 335
    const/16 v3, 0x17

    .line 337
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 339
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_EDIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 342
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 344
    move-object/from16 v24, v0

    .line 346
    const/16 v1, 0x370

    .line 348
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_STARTED"

    .line 350
    const/16 v3, 0x18

    .line 352
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 354
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_STARTED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 357
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 359
    move-object/from16 v25, v0

    .line 361
    const/16 v1, 0x371

    .line 363
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_FAILURE"

    .line 365
    const/16 v3, 0x19

    .line 367
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 369
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_FAILURE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 372
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 374
    move-object/from16 v26, v0

    .line 376
    const/16 v1, 0x372

    .line 378
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_COMPLETED"

    .line 380
    const/16 v3, 0x1a

    .line 382
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 384
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_COMPLETED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 387
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 389
    move-object/from16 v27, v0

    .line 391
    const/16 v1, 0x379

    .line 393
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_STARTED"

    .line 395
    const/16 v3, 0x1b

    .line 397
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 399
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_STARTED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 402
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 404
    move-object/from16 v28, v0

    .line 406
    const/16 v1, 0x37a

    .line 408
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_CACHED_IMAGE_LOADED"

    .line 410
    const/16 v3, 0x1c

    .line 412
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 414
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_CACHED_IMAGE_LOADED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 417
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 419
    move-object/from16 v29, v0

    .line 421
    const/16 v1, 0x37b

    .line 423
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_FINISHED"

    .line 425
    const/16 v3, 0x1d

    .line 427
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 429
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_ACTIVITY_FINISHED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 432
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 434
    move-object/from16 v30, v0

    .line 436
    const/16 v1, 0x38e

    .line 438
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_SAVED"

    .line 440
    const/16 v3, 0x1e

    .line 442
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 444
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_SAVED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 447
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 449
    move-object/from16 v31, v0

    .line 451
    const/16 v1, 0x38f

    .line 453
    const-string v2, "SCREENSHOT_LONG_SCREENSHOT_EXIT"

    .line 455
    const/16 v3, 0x1f

    .line 457
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 459
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_EXIT:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 462
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 464
    move-object/from16 v32, v0

    .line 466
    const/16 v1, 0x4d8

    .line 468
    const-string v2, "SCREENSHOT_SAVED_TO_WORK_PROFILE"

    .line 470
    const/16 v3, 0x20

    .line 472
    invoke-direct {v0, v2, v3, v1}, Lcom/android/systemui/screenshot/ScreenshotEvent;-><init>(Ljava/lang/String;II)V

    .line 474
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SAVED_TO_WORK_PROFILE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 477
    move-object/from16 v0, v33

    .line 479
    move-object/from16 v1, v34

    .line 481
    move-object/from16 v2, v35

    .line 483
    move-object/from16 v3, v36

    .line 485
    filled-new-array/range {v0 .. v32}, [Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 487
    move-result-object v0

    .line 490
    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->$VALUES:[Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 491
    return-void
    .line 493
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->mId:I

    .line 5
    return-void
    .line 7
.end method

.method public static getScreenshotSource(I)Lcom/android/systemui/screenshot/ScreenshotEvent;
    .locals 1

    .line 1
    if-eqz p0, :cond_5

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    const/4 v0, 0x6

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 19
    return-object p0

    .line 21
    :cond_0
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_VENDOR_GESTURE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 22
    return-object p0

    .line 24
    :cond_1
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_ACCESSIBILITY_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 25
    return-object p0

    .line 27
    :cond_2
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_OVERVIEW:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 28
    return-object p0

    .line 30
    :cond_3
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_OTHER:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 31
    return-object p0

    .line 33
    :cond_4
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_KEY_CHORD:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 34
    return-object p0

    .line 36
    :cond_5
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REQUESTED_GLOBAL_ACTIONS:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 37
    return-object p0
    .line 39
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenshot/ScreenshotEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/screenshot/ScreenshotEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->$VALUES:[Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 2
    invoke-virtual {v0}, [Lcom/android/systemui/screenshot/ScreenshotEvent;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotEvent;->mId:I

    .line 2
    return p0
    .line 4
.end method
