.class Lcom/android/settings/notification/app/AppNotificationSettings$3;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/AppNotificationSettings;->setupFold()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/app/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$3;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 195
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$3;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    const-string p1, ""

    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$3600(Lcom/android/settings/notification/app/AppNotificationSettings;ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method
