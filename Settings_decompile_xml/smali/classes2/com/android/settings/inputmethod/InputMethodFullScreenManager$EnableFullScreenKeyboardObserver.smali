.class Lcom/android/settings/inputmethod/InputMethodFullScreenManager$EnableFullScreenKeyboardObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodFullScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodFullScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableFullScreenKeyboardObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodFullScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/inputmethod/InputMethodFullScreenManager;Landroid/os/Handler;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager$EnableFullScreenKeyboardObserver;->this$0:Lcom/android/settings/inputmethod/InputMethodFullScreenManager;

    .line 103
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 109
    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodFullScreenManager$EnableFullScreenKeyboardObserver;->this$0:Lcom/android/settings/inputmethod/InputMethodFullScreenManager;

    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodFullScreenManager;->-$$Nest$mupdateFunctionPreferenceEnable(Lcom/android/settings/inputmethod/InputMethodFullScreenManager;)V

    return-void
.end method
