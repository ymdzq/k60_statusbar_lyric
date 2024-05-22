.class public final Lcom/miui/systemui/events/VisibleEventItem;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ANALYZE_VALUE:Ljava/lang/String; = "analyze_value"

.field public static final CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final CLEARABLE:Ljava/lang/String; = "if_delete_notification"

.field public static final CUSTOM_ACTION:Ljava/lang/String; = "if_custom_action"

.field public static final CUSTOM_ICON:Ljava/lang/String; = "if_custom_icon"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final FLAG:Ljava/lang/String; = "flags"

.field public static final GROUP_EXPANSION:Ljava/lang/String; = "group_expansion"

.field public static final GROUP_ITEMS:Ljava/lang/String; = "group_items"

.field public static final GROUP_KEY:Ljava/lang/String; = "group_key"

.field public static final IF_FOLD_ENTRY:Ljava/lang/String; = "if_unimportant_notification"

.field public static final IMPORTANCE:Ljava/lang/String; = "importance"

.field public static final INDEX:Ljava/lang/String; = "index"

.field public static final INSTANCE:Lcom/miui/systemui/events/VisibleEventItem;

.field public static final IS_GROUP:Ljava/lang/String; = "if_group"

.field public static final IS_PRIORITY:Ljava/lang/String; = "is_priority"

.field public static final ITEMS:Ljava/lang/String; = "items"

.field public static final LARGE_ICON:Ljava/lang/String; = "if_large_icon"

.field public static final MEDIA_NOTIFICATION_STYLE:Ljava/lang/String; = "media_notification_style"

.field public static final ONGOING:Ljava/lang/String; = "if_delete_retained_notification"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final PUSH_ID:Ljava/lang/String; = "push_id"

.field public static final SBN_ID:Ljava/lang/String; = "sbn_id"

.field public static final SEND_PKG:Ljava/lang/String; = "send_pkg"

.field public static final STYLE:Ljava/lang/String; = "style"

.field public static final TAG:Ljava/lang/String; = "notification_tag"

.field public static final TARGET_PKG:Ljava/lang/String; = "target_pkg"

.field public static final TEXT_ID:Ljava/lang/String; = "text_id"

.field public static final TSID:Ljava/lang/String; = "ts_id"

.field public static final VISUAL_POSITION:Ljava/lang/String; = "position"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/systemui/events/VisibleEventItem;

    .line 2
    invoke-direct {v0}, Lcom/miui/systemui/events/VisibleEventItem;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/systemui/events/VisibleEventItem;->INSTANCE:Lcom/miui/systemui/events/VisibleEventItem;

    .line 7
    return-void
    .line 9
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
