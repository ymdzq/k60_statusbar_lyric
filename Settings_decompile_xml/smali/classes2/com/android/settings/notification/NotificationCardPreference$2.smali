.class Lcom/android/settings/notification/NotificationCardPreference$2;
.super Ljava/lang/Object;
.source "NotificationCardPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationCardPreference;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/android/settings/notification/NotificationCardPreference$2;->this$0:Lcom/android/settings/notification/NotificationCardPreference;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationCardPreference$2;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/NotificationCardPreference$2;->this$0:Lcom/android/settings/notification/NotificationCardPreference;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationCardPreference;->-$$Nest$fgetmLockScreenNotification(Lcom/android/settings/notification/NotificationCardPreference;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/android/settings/notification/NotificationCardPreference$2;->this$0:Lcom/android/settings/notification/NotificationCardPreference;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationCardPreference;->-$$Nest$fgetmFloatNotification(Lcom/android/settings/notification/NotificationCardPreference;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 70
    iget-object v2, p0, Lcom/android/settings/notification/NotificationCardPreference$2;->this$0:Lcom/android/settings/notification/NotificationCardPreference;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationCardPreference;->-$$Nest$fgetmShowAppBadge(Lcom/android/settings/notification/NotificationCardPreference;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-le v0, v2, :cond_1

    move v2, v0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationCardPreference$2;->this$0:Lcom/android/settings/notification/NotificationCardPreference;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationCardPreference;->-$$Nest$fgetmLockScreenNotification(Lcom/android/settings/notification/NotificationCardPreference;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/NotificationCardPreference$2;->this$0:Lcom/android/settings/notification/NotificationCardPreference;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationCardPreference;->-$$Nest$fgetmFloatNotification(Lcom/android/settings/notification/NotificationCardPreference;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/NotificationCardPreference$2;->this$0:Lcom/android/settings/notification/NotificationCardPreference;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationCardPreference;->-$$Nest$fgetmShowAppBadge(Lcom/android/settings/notification/NotificationCardPreference;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    iget-object p0, p0, Lcom/android/settings/notification/NotificationCardPreference$2;->val$itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
