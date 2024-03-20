.class Lcom/android/settings/MiuiLocalePicker$6;
.super Ljava/lang/Object;
.source "MiuiLocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiLocalePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiLocalePicker;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiLocalePicker;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/android/settings/MiuiLocalePicker$6;->this$0:Lcom/android/settings/MiuiLocalePicker;

    iput p2, p0, Lcom/android/settings/MiuiLocalePicker$6;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker$6;->this$0:Lcom/android/settings/MiuiLocalePicker;

    iget v1, p0, Lcom/android/settings/MiuiLocalePicker$6;->val$dialogId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiLocalePicker;->removeDialog(I)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/MiuiLocalePicker$6;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 315
    iget-object p0, p0, Lcom/android/settings/MiuiLocalePicker$6;->this$0:Lcom/android/settings/MiuiLocalePicker;

    invoke-static {p0}, Lcom/android/settings/MiuiLocalePicker;->-$$Nest$fgetmTargetLocale(Lcom/android/settings/MiuiLocalePicker;)Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    return-void
.end method
