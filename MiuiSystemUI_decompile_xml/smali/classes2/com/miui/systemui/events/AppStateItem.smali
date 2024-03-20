.class public final Lcom/miui/systemui/events/AppStateItem;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final APP_DISPLAY_NAME:Ljava/lang/String; = "app_display_name"

.field public static final APP_FOLD_RULE:Ljava/lang/String; = "app_fold_rule"

.field public static final APP_PACKAGE_NAME:Ljava/lang/String; = "app_package_name"

.field public static final APP_STATE_ID_IN_LIST:Ljava/lang/String; = "id_in_list"

.field public static final IF_ALLOW_FLOAT_NOTIFICATION:Ljava/lang/String; = "if_allow_float_notification"

.field public static final IF_ALLOW_KEYBOARD_NOTIFICATION:Ljava/lang/String; = "if_allow_keyboard_notification"

.field public static final IF_ALLOW_NOTIFICATION:Ljava/lang/String; = "if_allow_notification"

.field public static final IF_DISPLAY_APP_BADGE:Ljava/lang/String; = "if_display_app_badge"

.field public static final IF_OPEN_ONGOING_NOTIFICATION_SWITCH:Ljava/lang/String; = "if_open_retained_notification_switch"

.field public static final IF_OPEN_VIBRATION_SWITCH:Ljava/lang/String; = "if_open_vibration_switch"

.field public static final IF_OPEN_VOICE_SWITCH:Ljava/lang/String; = "if_open_voice_switch"

.field public static final INSTANCE:Lcom/miui/systemui/events/AppStateItem;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/systemui/events/AppStateItem;

    .line 2
    invoke-direct {v0}, Lcom/miui/systemui/events/AppStateItem;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/systemui/events/AppStateItem;->INSTANCE:Lcom/miui/systemui/events/AppStateItem;

    .line 7
    return-void
    .line 9
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
