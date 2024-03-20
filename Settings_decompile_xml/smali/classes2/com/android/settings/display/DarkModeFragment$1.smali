.class Lcom/android/settings/display/DarkModeFragment$1;
.super Ljava/lang/Object;
.source "DarkModeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/DarkModeFragment;->showTimePickerDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/DarkModeFragment;

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lcom/android/settings/display/DarkModeFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/android/settings/display/DarkModeFragment$1;->this$0:Lcom/android/settings/display/DarkModeFragment;

    iput p2, p0, Lcom/android/settings/display/DarkModeFragment$1;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment$1;->this$0:Lcom/android/settings/display/DarkModeFragment;

    iget p0, p0, Lcom/android/settings/display/DarkModeFragment$1;->val$time:I

    invoke-virtual {v0, p0}, Lcom/android/settings/display/DarkModeFragment;->showTimePicker(I)V

    return-void
.end method
