.class Lcom/android/settings/MiuiLocalePicker$4;
.super Ljava/lang/Object;
.source "MiuiLocalePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiLocalePicker;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiLocalePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiLocalePicker;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/android/settings/MiuiLocalePicker$4;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 288
    iget-object p1, p0, Lcom/android/settings/MiuiLocalePicker$4;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 289
    iget-object p0, p0, Lcom/android/settings/MiuiLocalePicker$4;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
