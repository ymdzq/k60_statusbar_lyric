.class Lcom/android/settings/utils/KeyboardHelper$3;
.super Ljava/lang/Object;
.source "KeyboardHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/utils/KeyboardHelper;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/utils/KeyboardHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/utils/KeyboardHelper;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/settings/utils/KeyboardHelper$3;->this$0:Lcom/android/settings/utils/KeyboardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 245
    iget-object p0, p0, Lcom/android/settings/utils/KeyboardHelper$3;->this$0:Lcom/android/settings/utils/KeyboardHelper;

    invoke-static {p0}, Lcom/android/settings/utils/KeyboardHelper;->-$$Nest$fgetmNestedScrollView(Lcom/android/settings/utils/KeyboardHelper;)Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/utils/KeyboardHelper;->relocateFocused(Landroid/view/ViewGroup;)V

    return-void
.end method
