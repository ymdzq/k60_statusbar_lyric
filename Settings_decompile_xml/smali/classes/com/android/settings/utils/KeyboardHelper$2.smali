.class Lcom/android/settings/utils/KeyboardHelper$2;
.super Ljava/lang/Object;
.source "KeyboardHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/utils/KeyboardHelper;-><init>(Landroid/app/Activity;)V
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

    .line 92
    iput-object p1, p0, Lcom/android/settings/utils/KeyboardHelper$2;->this$0:Lcom/android/settings/utils/KeyboardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settings/utils/KeyboardHelper$2;->this$0:Lcom/android/settings/utils/KeyboardHelper;

    invoke-static {v0}, Lcom/android/settings/utils/KeyboardHelper;->-$$Nest$fgetmActivity(Lcom/android/settings/utils/KeyboardHelper;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/android/settings/utils/KeyboardHelper$2;->this$0:Lcom/android/settings/utils/KeyboardHelper;

    invoke-static {p0}, Lcom/android/settings/utils/KeyboardHelper;->-$$Nest$mpossiblyResizeChildOfContent(Lcom/android/settings/utils/KeyboardHelper;)V

    return-void
.end method
