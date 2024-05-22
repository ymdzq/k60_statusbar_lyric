.class public abstract Lmiuix/view/HapticFeedbackConstants;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final MIUI_ALERT:I

.field public static final MIUI_BOUNDARY_SPATIAL:I

.field public static final MIUI_BOUNDARY_TIME:I

.field public static final MIUI_BUTTON_LARGE:I

.field public static final MIUI_BUTTON_MIDDLE:I

.field public static final MIUI_BUTTON_SMALL:I

.field public static final MIUI_FLICK:I

.field public static final MIUI_FLICK_LIGHT:I

.field public static final MIUI_GEAR_HEAVY:I

.field public static final MIUI_GEAR_LIGHT:I

.field public static final MIUI_HAPTIC_END:I

.field public static final MIUI_HAPTIC_VERSION_1_END:I

.field public static final MIUI_HAPTIC_VERSION_1_START:I

.field public static final MIUI_HAPTIC_VERSION_2_END:I

.field public static final MIUI_HAPTIC_VERSION_2_START:I

.field public static final MIUI_HOLD:I

.field public static final MIUI_KEYBOARD:I

.field public static final MIUI_LONG_PRESS:I

.field public static final MIUI_MESH_HEAVY:I

.field public static final MIUI_MESH_LIGHT:I

.field public static final MIUI_MESH_NORMAL:I

.field public static final MIUI_PICK_UP:I

.field public static final MIUI_POPUP_LIGHT:I

.field public static final MIUI_POPUP_NORMAL:I

.field public static final MIUI_SCROLL_EDGE:I

.field public static final MIUI_SWITCH:I

.field public static final MIUI_TAP_LIGHT:I

.field public static final MIUI_TAP_NORMAL:I

.field public static final MIUI_TRIGGER_DRAWER:I

.field public static final MIUI_VIRTUAL_RELEASE:I

.field public static final MIUI_ZAXIS_SWITCH:I

.field public static final NAMES:Landroidx/collection/SparseArrayCompat;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 2
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 4
    sput-object v0, Lmiuix/view/HapticFeedbackConstants;->NAMES:Landroidx/collection/SparseArrayCompat;

    .line 7
    const/high16 v1, 0x10000000

    .line 9
    sput v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_START:I

    .line 11
    sput v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_VIRTUAL_RELEASE:I

    .line 13
    const v2, 0x10000001

    .line 15
    sput v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    .line 18
    const v3, 0x10000002

    .line 20
    sput v3, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 23
    const v4, 0x10000003

    .line 25
    sput v4, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK:I

    .line 28
    const v5, 0x10000004

    .line 30
    sput v5, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    .line 33
    const v6, 0x10000005

    .line 35
    sput v6, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_HEAVY:I

    .line 38
    const v7, 0x10000006

    .line 40
    sput v7, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 43
    const v8, 0x10000007

    .line 45
    sput v8, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_LIGHT:I

    .line 48
    const v9, 0x10000008

    .line 50
    sput v9, Lmiuix/view/HapticFeedbackConstants;->MIUI_LONG_PRESS:I

    .line 53
    const v10, 0x10000009

    .line 55
    sput v10, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    .line 58
    const v11, 0x1000000a

    .line 60
    sput v11, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    .line 63
    const v12, 0x1000000b

    .line 65
    sput v12, Lmiuix/view/HapticFeedbackConstants;->MIUI_PICK_UP:I

    .line 68
    const v13, 0x1000000c

    .line 70
    sput v13, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    .line 73
    const v14, 0x1000000d

    .line 75
    sput v14, Lmiuix/view/HapticFeedbackConstants;->MIUI_TRIGGER_DRAWER:I

    .line 78
    const v15, 0x1000000e

    .line 80
    sput v15, Lmiuix/view/HapticFeedbackConstants;->MIUI_FLICK_LIGHT:I

    .line 83
    const v15, 0x1000000f

    .line 85
    sput v15, Lmiuix/view/HapticFeedbackConstants;->MIUI_HOLD:I

    .line 88
    const v15, 0x10000010

    .line 90
    sput v15, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_1_END:I

    .line 93
    sput v15, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_START:I

    .line 95
    sput v15, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_SPATIAL:I

    .line 97
    const v15, 0x10000011

    .line 99
    sput v15, Lmiuix/view/HapticFeedbackConstants;->MIUI_BOUNDARY_TIME:I

    .line 102
    const v15, 0x10000012

    .line 104
    sput v15, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_LARGE:I

    .line 107
    const v15, 0x10000013

    .line 109
    sput v15, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    .line 112
    const v15, 0x10000014

    .line 114
    sput v15, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    .line 117
    const v15, 0x10000015

    .line 119
    sput v15, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_LIGHT:I

    .line 122
    const v15, 0x10000016

    .line 124
    sput v15, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_HEAVY:I

    .line 127
    const v15, 0x10000017

    .line 129
    sput v15, Lmiuix/view/HapticFeedbackConstants;->MIUI_KEYBOARD:I

    .line 132
    const v15, 0x10000018

    .line 134
    sput v15, Lmiuix/view/HapticFeedbackConstants;->MIUI_ALERT:I

    .line 137
    const v15, 0x10000019

    .line 139
    sput v15, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    .line 142
    const v16, 0x1000001a

    .line 144
    sput v16, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_VERSION_2_END:I

    .line 147
    sput v16, Lmiuix/view/HapticFeedbackConstants;->MIUI_HAPTIC_END:I

    .line 149
    const-string v15, "MIUI_VIRTUAL_RELEASE"

    .line 151
    invoke-virtual {v0, v1, v15}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 153
    const-string v1, "MIUI_TAP_NORMAL"

    .line 156
    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 158
    const-string v1, "MIUI_TAP_LIGHT"

    .line 161
    invoke-virtual {v0, v3, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 163
    const-string v1, "MIUI_FLICK"

    .line 166
    invoke-virtual {v0, v4, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 168
    const-string v1, "MIUI_SWITCH"

    .line 171
    invoke-virtual {v0, v5, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 173
    const-string v1, "MIUI_MESH_HEAVY"

    .line 176
    invoke-virtual {v0, v6, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 178
    const-string v1, "MIUI_MESH_NORMAL"

    .line 181
    invoke-virtual {v0, v7, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 183
    const-string v1, "MIUI_MESH_LIGHT"

    .line 186
    invoke-virtual {v0, v8, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 188
    const-string v1, "MIUI_LONG_PRESS"

    .line 191
    invoke-virtual {v0, v9, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 193
    const-string v1, "MIUI_POPUP_NORMAL"

    .line 196
    invoke-virtual {v0, v10, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 198
    const-string v1, "MIUI_POPUP_LIGHT"

    .line 201
    invoke-virtual {v0, v11, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 203
    const-string v1, "MIUI_PICK_UP"

    .line 206
    invoke-virtual {v0, v12, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 208
    const-string v1, "MIUI_SCROLL_EDGE"

    .line 211
    invoke-virtual {v0, v13, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 213
    const-string v1, "MIUI_TRIGGER_DRAWER"

    .line 216
    invoke-virtual {v0, v14, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 218
    const-string v1, "MIUI_FLICK_LIGHT"

    .line 221
    const v2, 0x1000000e

    .line 223
    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 226
    const-string v1, "MIUI_HOLD"

    .line 229
    const v2, 0x1000000f

    .line 231
    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 234
    const-string v1, "MIUI_BOUNDARY_SPATIAL"

    .line 237
    const v2, 0x10000010

    .line 239
    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 242
    const-string v1, "MIUI_BOUNDARY_TIME"

    .line 245
    const v2, 0x10000011

    .line 247
    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 250
    const-string v1, "MIUI_BUTTON_LARGE"

    .line 253
    const v2, 0x10000012

    .line 255
    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 258
    const-string v1, "MIUI_BUTTON_MIDDLE"

    .line 261
    const v2, 0x10000013

    .line 263
    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 266
    const-string v1, "MIUI_BUTTON_SMALL"

    .line 269
    const v2, 0x10000014

    .line 271
    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 274
    const-string v1, "MIUI_GEAR_LIGHT"

    .line 277
    const v2, 0x10000015

    .line 279
    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 282
    const-string v1, "MIUI_GEAR_HEAVY"

    .line 285
    const v2, 0x10000016

    .line 287
    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 290
    const-string v1, "MIUI_KEYBOARD"

    .line 293
    const v2, 0x10000017

    .line 295
    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 298
    const-string v1, "MIUI_ALERT"

    .line 301
    const v2, 0x10000018

    .line 303
    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 306
    const-string v1, "MIUI_ZAXIS_SWITCH"

    .line 309
    const v2, 0x10000019

    .line 311
    invoke-virtual {v0, v2, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 314
    return-void
    .line 317
.end method
