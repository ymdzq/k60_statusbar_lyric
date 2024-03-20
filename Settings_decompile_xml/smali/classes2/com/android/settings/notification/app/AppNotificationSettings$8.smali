.class Lcom/android/settings/notification/app/AppNotificationSettings$8;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/AppNotificationSettings;->setupPriority()V
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

    .line 269
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings$8;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 272
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 273
    iget-object p2, p0, Lcom/android/settings/notification/app/AppNotificationSettings$8;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p2}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$5200(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$8;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$5000(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings$8;->this$0:Lcom/android/settings/notification/app/AppNotificationSettings;

    invoke-static {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->access$5100(Lcom/android/settings/notification/app/AppNotificationSettings;)I

    move-result p0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, v0, p0, p1}, Lcom/android/settings/notification/MiuiNotificationBackend;->setPriority(Ljava/lang/String;II)V

    const/4 p0, 0x1

    return p0
.end method
