.class Lcom/android/settings/notification/app/AppNotificationSettings$4;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/AppNotificationSettings;->setupAggregate()V
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

    .line 208
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 211
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$4;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    const/4 p1, 0x2

    const-string v0, ""

    invoke-static {p0, p1, v0, v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$3700(Lcom/android/settings/notification/app/AppNotificationSettings;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
