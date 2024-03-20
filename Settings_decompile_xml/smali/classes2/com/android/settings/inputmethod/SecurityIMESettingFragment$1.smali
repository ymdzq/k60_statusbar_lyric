.class Lcom/android/settings/inputmethod/SecurityIMESettingFragment$1;
.super Ljava/lang/Object;
.source "SecurityIMESettingFragment.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/SecurityIMESettingFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/SecurityIMESettingFragment;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment$1;->this$0:Lcom/android/settings/inputmethod/SecurityIMESettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lmiuix/visual/check/VisualCheckGroup;I)V
    .locals 0

    .line 45
    sget p1, Lcom/android/settings/R$id;->high_keyboard:I

    if-ne p2, p1, :cond_0

    .line 46
    iget-object p0, p0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment$1;->this$0:Lcom/android/settings/inputmethod/SecurityIMESettingFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->-$$Nest$mupdateSecImeNumRandomOrder(Lcom/android/settings/inputmethod/SecurityIMESettingFragment;Z)V

    goto :goto_0

    .line 47
    :cond_0
    sget p1, Lcom/android/settings/R$id;->default_keyboard:I

    if-ne p2, p1, :cond_1

    .line 48
    iget-object p0, p0, Lcom/android/settings/inputmethod/SecurityIMESettingFragment$1;->this$0:Lcom/android/settings/inputmethod/SecurityIMESettingFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/SecurityIMESettingFragment;->-$$Nest$mupdateSecImeNumRandomOrder(Lcom/android/settings/inputmethod/SecurityIMESettingFragment;Z)V

    :cond_1
    :goto_0
    return-void
.end method
