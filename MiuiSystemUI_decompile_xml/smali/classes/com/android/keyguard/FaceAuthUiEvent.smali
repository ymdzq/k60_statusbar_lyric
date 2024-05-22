.class public enum Lcom/android/keyguard/FaceAuthUiEvent;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_CHARGE_ANIMATION_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_DEFAULT_REASON:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_FOLD_STATE_CHANGE:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_NEGATIVE_SCROLL_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_NON_STRONG_BIOMETRIC_ALLOWED_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_DREAM_STARTED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_FACE_CANCEL_NOT_RECEIVED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_FINISHED_GOING_TO_SLEEP:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_FP_LOCKED_OUT:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_KEYGUARD_GOING_AWAY:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_TRUST_ENABLED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_THIRD_THEME_REQUESTED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_ALL_AUTHENTICATORS_REGISTERED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_DURING_CANCELLATION:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_ENROLLMENTS_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_NOTIFICATION_PANEL_CLICKED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_OCCLUDING_APP_REQUESTED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_ON_REACH_GESTURE_ON_AOD:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_PICK_UP_GESTURE_TRIGGERED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_QS_EXPANDED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_RETRY_AFTER_HW_UNAVAILABLE:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_SWIPE_UP_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_TRUST_DISABLED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_TRIGGERED_UDFPS_POINTER_DOWN:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_ASSISTANT_VISIBILITY_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_BIOMETRIC_ENABLED_ON_KEYGUARD:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_CAMERA_LAUNCHED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_GOING_TO_SLEEP:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_KEYGUARD_OCCLUSION_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_KEYGUARD_VISIBILITY_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_ON_FACE_AUTHENTICATED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_ON_KEYGUARD_INIT:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_POSTURE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN_OR_WILL_BE_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_STARTED_WAKING_UP:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_STRONG_AUTH_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_UPDATED_USER_SWITCHING:Lcom/android/keyguard/FaceAuthUiEvent;

.field public static final enum FACE_AUTH_USER_CLICK_FACE_ICON:Lcom/android/keyguard/FaceAuthUiEvent;


# instance fields
.field private extraInfo:I

.field private final id:I

.field private final reason:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 50

    .line 1
    new-instance v1, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 2
    move-object v0, v1

    .line 4
    const/16 v2, 0x47a

    .line 5
    const-string v3, "Face auth due to request from occluding app."

    .line 7
    const-string v4, "FACE_AUTH_TRIGGERED_OCCLUDING_APP_REQUESTED"

    .line 9
    const/4 v5, 0x0

    .line 11
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 12
    sput-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_OCCLUDING_APP_REQUESTED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 15
    new-instance v2, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 17
    move-object v1, v2

    .line 19
    const/16 v3, 0x47b

    .line 20
    const-string v4, "Face auth triggered due to finger down on UDFPS"

    .line 22
    const-string v5, "FACE_AUTH_TRIGGERED_UDFPS_POINTER_DOWN"

    .line 24
    const/4 v6, 0x1

    .line 26
    invoke-direct {v2, v5, v6, v3, v4}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 27
    sput-object v2, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_UDFPS_POINTER_DOWN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 30
    new-instance v3, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 32
    move-object v2, v3

    .line 34
    const/16 v4, 0x47c

    .line 35
    const-string v5, "Face auth due to swipe up on bouncer"

    .line 37
    const-string v6, "FACE_AUTH_TRIGGERED_SWIPE_UP_ON_BOUNCER"

    .line 39
    const/4 v7, 0x2

    .line 41
    invoke-direct {v3, v6, v7, v4, v5}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 42
    sput-object v3, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_SWIPE_UP_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 45
    new-instance v4, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 47
    move-object v3, v4

    .line 49
    const/16 v5, 0x47d

    .line 50
    const-string v6, "Face auth requested when user reaches for the device on AoD."

    .line 52
    const-string v7, "FACE_AUTH_TRIGGERED_ON_REACH_GESTURE_ON_AOD"

    .line 54
    const/4 v8, 0x3

    .line 56
    invoke-direct {v4, v7, v8, v5, v6}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 57
    sput-object v4, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_ON_REACH_GESTURE_ON_AOD:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 60
    new-instance v5, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 62
    move-object v4, v5

    .line 64
    const/16 v6, 0x47e

    .line 65
    const-string v7, "Face auth due to face lockout reset."

    .line 67
    const-string v8, "FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET"

    .line 69
    const/4 v9, 0x4

    .line 71
    invoke-direct {v5, v8, v9, v6, v7}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 72
    sput-object v5, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 75
    new-instance v6, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 77
    move-object v5, v6

    .line 79
    const/16 v7, 0x47f

    .line 80
    const-string v8, "Face auth due to QS expansion."

    .line 82
    const-string v9, "FACE_AUTH_TRIGGERED_QS_EXPANDED"

    .line 84
    const/4 v10, 0x5

    .line 86
    invoke-direct {v6, v9, v10, v7, v8}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 87
    sput-object v6, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_QS_EXPANDED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 90
    new-instance v7, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 92
    move-object v6, v7

    .line 94
    const/16 v8, 0x480

    .line 95
    const-string v9, "Face auth due to notification panel click."

    .line 97
    const-string v10, "FACE_AUTH_TRIGGERED_NOTIFICATION_PANEL_CLICKED"

    .line 99
    const/4 v11, 0x6

    .line 101
    invoke-direct {v7, v10, v11, v8, v9}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 102
    sput-object v7, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_NOTIFICATION_PANEL_CLICKED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 105
    new-instance v8, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 107
    move-object v7, v8

    .line 109
    const/16 v9, 0x481

    .line 110
    const-string v10, "Face auth due to pickup gesture triggered when the device is awake and not from AOD."

    .line 112
    const-string v11, "FACE_AUTH_TRIGGERED_PICK_UP_GESTURE_TRIGGERED"

    .line 114
    const/4 v12, 0x7

    .line 116
    invoke-direct {v8, v11, v12, v9, v10}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 117
    sput-object v8, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_PICK_UP_GESTURE_TRIGGERED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 120
    new-instance v9, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 122
    move-object v8, v9

    .line 124
    const/16 v10, 0x482

    .line 125
    const-string v11, "Face auth due to alternate bouncer shown."

    .line 127
    const-string v12, "FACE_AUTH_TRIGGERED_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN"

    .line 129
    const/16 v13, 0x8

    .line 131
    invoke-direct {v9, v12, v13, v10, v11}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 133
    sput-object v9, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_ALTERNATE_BIOMETRIC_BOUNCER_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 136
    new-instance v10, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 138
    move-object v9, v10

    .line 140
    const/16 v11, 0x483

    .line 141
    const-string v12, "Face auth started/stopped due to primary bouncer shown."

    .line 143
    const-string v13, "FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN"

    .line 145
    const/16 v14, 0x9

    .line 147
    invoke-direct {v10, v13, v14, v11, v12}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 149
    sput-object v10, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 152
    new-instance v11, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 154
    move-object v10, v11

    .line 156
    const/16 v12, 0x4ad

    .line 157
    const-string v13, "Face auth started/stopped due to bouncer being shown or will be shown."

    .line 159
    const-string v14, "FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN_OR_WILL_BE_SHOWN"

    .line 161
    const/16 v15, 0xa

    .line 163
    invoke-direct {v11, v14, v15, v12, v13}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 165
    sput-object v11, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN_OR_WILL_BE_SHOWN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 168
    new-instance v12, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 170
    move-object v11, v12

    .line 172
    const/16 v13, 0x484

    .line 173
    const-string v14, "Face auth due to retry after hardware unavailable."

    .line 175
    const-string v15, "FACE_AUTH_TRIGGERED_RETRY_AFTER_HW_UNAVAILABLE"

    .line 177
    move-object/from16 v45, v0

    .line 179
    const/16 v0, 0xb

    .line 181
    invoke-direct {v12, v15, v0, v13, v14}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 183
    sput-object v12, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_RETRY_AFTER_HW_UNAVAILABLE:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 186
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 188
    move-object v12, v0

    .line 190
    const/16 v13, 0x486

    .line 191
    const-string v14, "Face auth started due to trust disabled."

    .line 193
    const-string v15, "FACE_AUTH_TRIGGERED_TRUST_DISABLED"

    .line 195
    move-object/from16 v46, v1

    .line 197
    const/16 v1, 0xc

    .line 199
    invoke-direct {v0, v15, v1, v13, v14}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 201
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_TRUST_DISABLED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 204
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 206
    move-object v13, v0

    .line 208
    const/16 v1, 0x495

    .line 209
    const-string v14, "Face auth stopped due to trust enabled."

    .line 211
    const-string v15, "FACE_AUTH_STOPPED_TRUST_ENABLED"

    .line 213
    move-object/from16 v47, v2

    .line 215
    const/16 v2, 0xd

    .line 217
    invoke-direct {v0, v15, v2, v1, v14}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 219
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_TRUST_ENABLED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 222
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 224
    move-object v14, v0

    .line 226
    const/16 v1, 0x487

    .line 227
    const-string v2, "Face auth started/stopped due to keyguard occlusion change."

    .line 229
    const-string v15, "FACE_AUTH_UPDATED_KEYGUARD_OCCLUSION_CHANGED"

    .line 231
    move-object/from16 v48, v3

    .line 233
    const/16 v3, 0xe

    .line 235
    invoke-direct {v0, v15, v3, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 237
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_OCCLUSION_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 240
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 242
    move-object v15, v0

    .line 244
    const/16 v1, 0x488

    .line 245
    const-string v2, "Face auth started/stopped due to assistant visibility change."

    .line 247
    const-string v3, "FACE_AUTH_UPDATED_ASSISTANT_VISIBILITY_CHANGED"

    .line 249
    move-object/from16 v49, v4

    .line 251
    const/16 v4, 0xf

    .line 253
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 255
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_ASSISTANT_VISIBILITY_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 258
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent$FACE_AUTH_UPDATED_STARTED_WAKING_UP;

    .line 260
    move-object/from16 v16, v0

    .line 262
    invoke-direct {v0}, Lcom/android/keyguard/FaceAuthUiEvent$FACE_AUTH_UPDATED_STARTED_WAKING_UP;-><init>()V

    .line 264
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_STARTED_WAKING_UP:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 267
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 269
    move-object/from16 v17, v0

    .line 271
    const/16 v1, 0x4f1

    .line 273
    const-string v2, "Face auth started/stopped due to device posture changed."

    .line 275
    const-string v3, "FACE_AUTH_UPDATED_POSTURE_CHANGED"

    .line 277
    const/16 v4, 0x11

    .line 279
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 281
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_POSTURE_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 284
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 286
    move-object/from16 v18, v0

    .line 288
    const/16 v1, 0x48a

    .line 290
    const-string v2, "Face auth due to dream stopped."

    .line 292
    const-string v3, "FACE_AUTH_TRIGGERED_DREAM_STOPPED"

    .line 294
    const/16 v4, 0x12

    .line 296
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 298
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 301
    move-object/from16 v19, v0

    .line 303
    const/16 v1, 0x48b

    .line 305
    const-string v2, "Face auth due to all authenticators registered."

    .line 307
    const-string v3, "FACE_AUTH_TRIGGERED_ALL_AUTHENTICATORS_REGISTERED"

    .line 309
    const/16 v4, 0x13

    .line 311
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 313
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_ALL_AUTHENTICATORS_REGISTERED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 316
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 318
    move-object/from16 v20, v0

    .line 320
    const/16 v1, 0x48c

    .line 322
    const-string v2, "Face auth due to enrolments changed."

    .line 324
    const-string v3, "FACE_AUTH_TRIGGERED_ENROLLMENTS_CHANGED"

    .line 326
    const/16 v4, 0x14

    .line 328
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 330
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_ENROLLMENTS_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 333
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 335
    move-object/from16 v21, v0

    .line 337
    const/16 v1, 0x48d

    .line 339
    const-string v2, "Face auth stopped or started due to keyguard visibility changed."

    .line 341
    const-string v3, "FACE_AUTH_UPDATED_KEYGUARD_VISIBILITY_CHANGED"

    .line 343
    const/16 v4, 0x15

    .line 345
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 347
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_VISIBILITY_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 350
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 352
    move-object/from16 v22, v0

    .line 354
    const/16 v1, 0x496

    .line 356
    const-string v2, "Face auth stopped due to face cancel signal not received."

    .line 358
    const-string v3, "FACE_AUTH_STOPPED_FACE_CANCEL_NOT_RECEIVED"

    .line 360
    const/16 v4, 0x16

    .line 362
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 364
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FACE_CANCEL_NOT_RECEIVED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 367
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 369
    move-object/from16 v23, v0

    .line 371
    const/16 v1, 0x497

    .line 373
    const-string v2, "Another request to start face auth received while cancelling face auth"

    .line 375
    const-string v3, "FACE_AUTH_TRIGGERED_DURING_CANCELLATION"

    .line 377
    const/16 v4, 0x17

    .line 379
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 381
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_DURING_CANCELLATION:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 384
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 386
    move-object/from16 v24, v0

    .line 388
    const/16 v1, 0x498

    .line 390
    const-string v2, "Face auth stopped because dreaming started"

    .line 392
    const-string v3, "FACE_AUTH_STOPPED_DREAM_STARTED"

    .line 394
    const/16 v4, 0x18

    .line 396
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 398
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_DREAM_STARTED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 401
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 403
    move-object/from16 v25, v0

    .line 405
    const/16 v1, 0x499

    .line 407
    const-string v2, "Face auth stopped because fp locked out"

    .line 409
    const-string v3, "FACE_AUTH_STOPPED_FP_LOCKED_OUT"

    .line 411
    const/16 v4, 0x19

    .line 413
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 415
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FP_LOCKED_OUT:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 418
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 420
    move-object/from16 v26, v0

    .line 422
    const/16 v1, 0x49a

    .line 424
    const-string v2, "Face auth stopped because user started typing password/pin"

    .line 426
    const-string v3, "FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER"

    .line 428
    const/16 v4, 0x1a

    .line 430
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 432
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 435
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 437
    move-object/from16 v27, v0

    .line 439
    const/16 v1, 0x49b

    .line 441
    const-string v2, "Face auth stopped because keyguard going away"

    .line 443
    const-string v3, "FACE_AUTH_STOPPED_KEYGUARD_GOING_AWAY"

    .line 445
    const/16 v4, 0x1b

    .line 447
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 449
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_KEYGUARD_GOING_AWAY:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 452
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 454
    move-object/from16 v28, v0

    .line 456
    const/16 v1, 0x49c

    .line 458
    const-string v2, "Face auth started/stopped because camera launched"

    .line 460
    const-string v3, "FACE_AUTH_UPDATED_CAMERA_LAUNCHED"

    .line 462
    const/16 v4, 0x1c

    .line 464
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 466
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_CAMERA_LAUNCHED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 469
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 471
    move-object/from16 v29, v0

    .line 473
    const/16 v1, 0x49d

    .line 475
    const-string v2, "Face auth started/stopped because fingerprint launched"

    .line 477
    const-string v3, "FACE_AUTH_UPDATED_FP_AUTHENTICATED"

    .line 479
    const/16 v4, 0x1d

    .line 481
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 483
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 486
    move-object/from16 v30, v0

    .line 488
    const/16 v1, 0x49e

    .line 490
    const-string v2, "Face auth started/stopped because going to sleep"

    .line 492
    const-string v3, "FACE_AUTH_UPDATED_GOING_TO_SLEEP"

    .line 494
    const/16 v4, 0x1e

    .line 496
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 498
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_GOING_TO_SLEEP:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 501
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 503
    move-object/from16 v31, v0

    .line 505
    const/16 v1, 0x49f

    .line 507
    const-string v2, "Face auth stopped because finished going to sleep"

    .line 509
    const-string v3, "FACE_AUTH_STOPPED_FINISHED_GOING_TO_SLEEP"

    .line 511
    const/16 v4, 0x1f

    .line 513
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 515
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FINISHED_GOING_TO_SLEEP:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 518
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 520
    move-object/from16 v32, v0

    .line 522
    const/16 v1, 0x4a5

    .line 524
    const-string v2, "Face auth started/stopped because Keyguard is initialized"

    .line 526
    const-string v3, "FACE_AUTH_UPDATED_ON_KEYGUARD_INIT"

    .line 528
    const/16 v4, 0x20

    .line 530
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 532
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_ON_KEYGUARD_INIT:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 535
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 537
    move-object/from16 v33, v0

    .line 539
    const/16 v1, 0x4a1

    .line 541
    const-string v2, "Face auth started/stopped because Keyguard is reset"

    .line 543
    const-string v3, "FACE_AUTH_UPDATED_KEYGUARD_RESET"

    .line 545
    const/16 v4, 0x21

    .line 547
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 549
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 552
    move-object/from16 v34, v0

    .line 554
    const/16 v1, 0x4a2

    .line 556
    const-string v2, "Face auth started/stopped because user is switching"

    .line 558
    const-string v3, "FACE_AUTH_UPDATED_USER_SWITCHING"

    .line 560
    const/16 v4, 0x22

    .line 562
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 564
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_USER_SWITCHING:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 567
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 569
    move-object/from16 v35, v0

    .line 571
    const/16 v1, 0x4a3

    .line 573
    const-string v2, "Face auth started/stopped because face is authenticated"

    .line 575
    const-string v3, "FACE_AUTH_UPDATED_ON_FACE_AUTHENTICATED"

    .line 577
    const/16 v4, 0x23

    .line 579
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 581
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_ON_FACE_AUTHENTICATED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 584
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 586
    move-object/from16 v36, v0

    .line 588
    const/16 v1, 0x4a4

    .line 590
    const-string v2, "Face auth started/stopped because biometric is enabled on keyguard"

    .line 592
    const-string v3, "FACE_AUTH_UPDATED_BIOMETRIC_ENABLED_ON_KEYGUARD"

    .line 594
    const/16 v4, 0x24

    .line 596
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 598
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_BIOMETRIC_ENABLED_ON_KEYGUARD:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 601
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 603
    move-object/from16 v37, v0

    .line 605
    const/16 v1, 0x4e7

    .line 607
    const-string v2, "Face auth stopped because strong auth allowed changed"

    .line 609
    const-string v3, "FACE_AUTH_UPDATED_STRONG_AUTH_CHANGED"

    .line 611
    const/16 v4, 0x25

    .line 613
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 615
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_STRONG_AUTH_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 618
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 620
    move-object/from16 v38, v0

    .line 622
    const/16 v1, 0x4e8

    .line 624
    const-string v2, "Face auth stopped because non strong biometric allowed changed"

    .line 626
    const-string v3, "FACE_AUTH_NON_STRONG_BIOMETRIC_ALLOWED_CHANGED"

    .line 628
    const/16 v4, 0x26

    .line 630
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 632
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_NON_STRONG_BIOMETRIC_ALLOWED_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 635
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 637
    move-object/from16 v39, v0

    .line 639
    const/16 v1, 0x4e9

    .line 641
    const-string v2, "Face auth started/stopped due to charge animation dismiss/show."

    .line 643
    const-string v3, "FACE_AUTH_CHARGE_ANIMATION_CHANGED"

    .line 645
    const/16 v4, 0x27

    .line 647
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 649
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_CHARGE_ANIMATION_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 652
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 654
    move-object/from16 v40, v0

    .line 656
    const/16 v1, 0x4ea

    .line 658
    const-string v2, "Face auth started/stopped due to user drag to keyguard negative screen progress to or left 0."

    .line 660
    const-string v3, "FACE_AUTH_NEGATIVE_SCROLL_CHANGED"

    .line 662
    const/16 v4, 0x28

    .line 664
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 666
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_NEGATIVE_SCROLL_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 669
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 671
    move-object/from16 v41, v0

    .line 673
    const/16 v1, 0x4eb

    .line 675
    const-string v2, "When fold/unfold state changed, we have to restart face auth."

    .line 677
    const-string v3, "FACE_AUTH_FOLD_STATE_CHANGE"

    .line 679
    const/16 v4, 0x29

    .line 681
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 683
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_FOLD_STATE_CHANGE:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 686
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 688
    move-object/from16 v42, v0

    .line 690
    const/16 v1, 0x4ec

    .line 692
    const-string v2, "User click the face icon to start face authentication."

    .line 694
    const-string v3, "FACE_AUTH_USER_CLICK_FACE_ICON"

    .line 696
    const/16 v4, 0x2a

    .line 698
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 700
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_USER_CLICK_FACE_ICON:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 703
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 705
    move-object/from16 v43, v0

    .line 707
    const/16 v1, 0x4ed

    .line 709
    const-string v2, "Third theme requests starting face authentication."

    .line 711
    const-string v3, "FACE_AUTH_THIRD_THEME_REQUESTED"

    .line 713
    const/16 v4, 0x2b

    .line 715
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 717
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_THIRD_THEME_REQUESTED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 720
    new-instance v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 722
    move-object/from16 v44, v0

    .line 724
    const/16 v1, 0x4ee

    .line 726
    const-string v2, "Default reason."

    .line 728
    const-string v3, "FACE_AUTH_DEFAULT_REASON"

    .line 730
    const/16 v4, 0x2c

    .line 732
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/keyguard/FaceAuthUiEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 734
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_DEFAULT_REASON:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 737
    move-object/from16 v0, v45

    .line 739
    move-object/from16 v1, v46

    .line 741
    move-object/from16 v2, v47

    .line 743
    move-object/from16 v3, v48

    .line 745
    move-object/from16 v4, v49

    .line 747
    filled-new-array/range {v0 .. v44}, [Lcom/android/keyguard/FaceAuthUiEvent;

    .line 749
    move-result-object v0

    .line 752
    sput-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->$VALUES:[Lcom/android/keyguard/FaceAuthUiEvent;

    .line 753
    return-void
    .line 755
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/android/keyguard/FaceAuthUiEvent;->id:I

    .line 5
    iput-object p4, p0, Lcom/android/keyguard/FaceAuthUiEvent;->reason:Ljava/lang/String;

    .line 7
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/keyguard/FaceAuthUiEvent;->extraInfo:I

    .line 10
    return-void
    .line 12
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/FaceAuthUiEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/FaceAuthUiEvent;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/keyguard/FaceAuthUiEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->$VALUES:[Lcom/android/keyguard/FaceAuthUiEvent;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/keyguard/FaceAuthUiEvent;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public extraInfoToString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public final getExtraInfo()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/FaceAuthUiEvent;->extraInfo:I

    .line 2
    return p0
    .line 4
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/FaceAuthUiEvent;->id:I

    .line 2
    return p0
    .line 4
.end method

.method public final getReason()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/FaceAuthUiEvent;->reason:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final setExtraInfo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/FaceAuthUiEvent;->extraInfo:I

    .line 2
    return-void
    .line 4
.end method
