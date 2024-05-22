.class public final Lcom/android/keyguard/KeyguardSecurityContainerController$16$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# instance fields
.field public final synthetic this$1:Lcom/android/keyguard/KeyguardSecurityContainerController$16;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController$16;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16$1;->this$1:Lcom/android/keyguard/KeyguardSecurityContainerController$16;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    const-string p1, "POCO"

    .line 4
    sget-object v0, Lmiui/os/Build;->BRAND:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16$1;->this$1:Lcom/android/keyguard/KeyguardSecurityContainerController$16;

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 16
    sget-boolean p1, Lcom/android/keyguard/KeyguardSecurityContainerController;->DEBUG:Z

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p0

    .line 23
    const p1, 0x7f0812e9    # @drawable/miui_keyguard_forget_password_poco 'res/drawable-xhdpi/miui_keyguard_forget_password_poco.webp'

    .line 24
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16$1;->this$1:Lcom/android/keyguard/KeyguardSecurityContainerController$16;

    .line 32
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$16;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 34
    sget-boolean p1, Lcom/android/keyguard/KeyguardSecurityContainerController;->DEBUG:Z

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object p0

    .line 41
    const p1, 0x7f0812e8    # @drawable/miui_keyguard_forget_password_mi 'res/drawable-xhdpi/miui_keyguard_forget_password_mi.webp'

    .line 42
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object p0

    .line 48
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 49
    move-result p1

    .line 52
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 53
    move-result v0

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v1, v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    return-object p0

    .line 61
    :cond_1
    const/4 p0, 0x0

    .line 62
    return-object p0
.end method
