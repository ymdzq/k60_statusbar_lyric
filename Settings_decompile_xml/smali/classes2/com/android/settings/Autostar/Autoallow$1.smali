.class Lcom/android/settings/Autostar/Autoallow$1;
.super Ljava/lang/Object;
.source "Autoallow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Autostar/Autoallow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Autostar/Autoallow;


# direct methods
.method constructor <init>(Lcom/android/settings/Autostar/Autoallow;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/Autostar/Autoallow$1;->this$0:Lcom/android/settings/Autostar/Autoallow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/Autostar/Autoallow$AppPreference;

    .line 47
    invoke-virtual {p1}, Lcom/android/settings/Autostar/Autoallow$AppPreference;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 48
    iget-object p0, p0, Lcom/android/settings/Autostar/Autoallow$1;->this$0:Lcom/android/settings/Autostar/Autoallow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/miui/AppOpsUtils;->setApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 49
    iget-object p0, p1, Lcom/android/settings/Autostar/Autoallow$AppPreference;->v:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 50
    iget-object p0, p1, Lcom/android/settings/Autostar/Autoallow$AppPreference;->t:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
