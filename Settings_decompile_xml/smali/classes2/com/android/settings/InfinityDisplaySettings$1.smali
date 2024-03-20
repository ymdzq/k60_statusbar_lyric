.class Lcom/android/settings/InfinityDisplaySettings$1;
.super Ljava/lang/Object;
.source "InfinityDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/InfinityDisplaySettings;->setupForceImmersiveHintDialog(Lcom/android/settings/SimpleDialogFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/InfinityDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/InfinityDisplaySettings;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings$1;->this$0:Lcom/android/settings/InfinityDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 257
    iget-object p1, p0, Lcom/android/settings/InfinityDisplaySettings$1;->this$0:Lcom/android/settings/InfinityDisplaySettings;

    invoke-static {p1}, Lcom/android/settings/InfinityDisplaySettings;->-$$Nest$fgetmScreenButtonHide(Lcom/android/settings/InfinityDisplaySettings;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 258
    iget-object p1, p0, Lcom/android/settings/InfinityDisplaySettings$1;->this$0:Lcom/android/settings/InfinityDisplaySettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/InfinityDisplaySettings$1$1;

    invoke-direct {p2, p0}, Lcom/android/settings/InfinityDisplaySettings$1$1;-><init>(Lcom/android/settings/InfinityDisplaySettings$1;)V

    const-wide/16 v0, 0x12c

    .line 259
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
