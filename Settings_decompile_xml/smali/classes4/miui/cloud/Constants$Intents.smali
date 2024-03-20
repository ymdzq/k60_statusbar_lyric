.class public Lmiui/cloud/Constants$Intents;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intents"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_FIND_DEVICE_GUIDE:Ljava/lang/String; = "com.xiaomi.action.MICLOUD_FIND_DEVICE_GUIDE"

.field public static final ACTION_MICLOUD_INFO_SETTINGS:Ljava/lang/String; = "com.xiaomi.action.MICLOUD_INFO_SETTINGS"

.field public static final ACTION_UPLOAD_PHONE_LIST:Ljava/lang/String; = "com.miui.cloudservice.mms.UPLOAD_PHONE_LIST"

.field public static final ACTION_VIEW_CLOUD:Ljava/lang/String; = "com.xiaomi.action.MICLOUD_MAIN"

.field public static final ACTION_WARN_INVALID_DEVICE_ID:Ljava/lang/String; = "com.xiaomi.action.WARN_INVALID_DEVICE_ID"

.field public static final EXTRA_DEVICE_ID:Ljava/lang/String; = "device_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
