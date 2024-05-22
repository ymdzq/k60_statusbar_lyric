.class public abstract Lcom/miui/systemui/modulesettings/NotificationSettings;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final URI_AGGREGATE:Landroid/net/Uri;

.field public static final URI_FOLD:Landroid/net/Uri;

.field public static final URI_FOLD_FOOTER_ICON:Landroid/net/Uri;

.field public static final URI_STYLE:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "status_bar_notification_style"

    .line 2
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_STYLE:Landroid/net/Uri;

    .line 9
    const-string/jumbo v0, "user_fold"

    .line 11
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v0

    .line 17
    sput-object v0, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_FOLD:Landroid/net/Uri;

    .line 18
    const-string v0, "fold_footer_icons"

    .line 20
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    move-result-object v0

    .line 25
    sput-object v0, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_FOLD_FOOTER_ICON:Landroid/net/Uri;

    .line 26
    const-string/jumbo v0, "user_aggregate"

    .line 28
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    move-result-object v0

    .line 34
    sput-object v0, Lcom/miui/systemui/modulesettings/NotificationSettings;->URI_AGGREGATE:Landroid/net/Uri;

    .line 35
    return-void
    .line 37
.end method
