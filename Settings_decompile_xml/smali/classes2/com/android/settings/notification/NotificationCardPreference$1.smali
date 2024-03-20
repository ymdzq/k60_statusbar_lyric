.class Lcom/android/settings/notification/NotificationCardPreference$1;
.super Ljava/lang/Object;
.source "NotificationCardPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationCardPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationCardPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationCardPreference;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settings/notification/NotificationCardPreference$1;->this$0:Lcom/android/settings/notification/NotificationCardPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 41
    sget v0, Lcom/android/settings/R$id;->lock_screen_notification_card:I

    if-ne p1, v0, :cond_0

    .line 42
    iget-object p0, p0, Lcom/android/settings/notification/NotificationCardPreference$1;->this$0:Lcom/android/settings/notification/NotificationCardPreference;

    invoke-static {p0}, Lcom/android/settings/notification/NotificationCardPreference;->-$$Nest$mstartLockScreen(Lcom/android/settings/notification/NotificationCardPreference;)V

    goto :goto_0

    .line 43
    :cond_0
    sget v0, Lcom/android/settings/R$id;->float_notification_card:I

    if-ne p1, v0, :cond_1

    .line 44
    iget-object p0, p0, Lcom/android/settings/notification/NotificationCardPreference$1;->this$0:Lcom/android/settings/notification/NotificationCardPreference;

    invoke-static {p0}, Lcom/android/settings/notification/NotificationCardPreference;->-$$Nest$mstartFloat(Lcom/android/settings/notification/NotificationCardPreference;)V

    goto :goto_0

    .line 45
    :cond_1
    sget v0, Lcom/android/settings/R$id;->show_app_badge_card:I

    if-ne p1, v0, :cond_2

    .line 46
    iget-object p0, p0, Lcom/android/settings/notification/NotificationCardPreference$1;->this$0:Lcom/android/settings/notification/NotificationCardPreference;

    invoke-static {p0}, Lcom/android/settings/notification/NotificationCardPreference;->-$$Nest$mstartBadge(Lcom/android/settings/notification/NotificationCardPreference;)V

    :cond_2
    :goto_0
    return-void
.end method
