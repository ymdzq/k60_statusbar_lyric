.class Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$4;
.super Ljava/lang/Object;
.source "MiuiFaceDetailFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$4;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$4;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->-$$Nest$fgetmEditText(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$4;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->-$$Nest$fgetmEditText(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment$4;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;

    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;->-$$Nest$fgetmFaceTitle(Lcom/android/settings/faceunlock/MiuiFaceDetailFragment;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method
