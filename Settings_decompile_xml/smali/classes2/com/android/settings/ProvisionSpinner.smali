.class public Lcom/android/settings/ProvisionSpinner;
.super Landroid/widget/Spinner;
.source "ProvisionSpinner.java"


# static fields
.field private static final ProvisionSpinner_Styleable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100b2    # @android:attr/entries

    .line 12
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/ProvisionSpinner;->ProvisionSpinner_Styleable:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/ProvisionSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/ProvisionSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    sget-object p4, Lcom/android/settings/ProvisionSpinner;->ProvisionSpinner_Styleable:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 26
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 28
    new-instance p4, Landroid/widget/ArrayAdapter;

    sget v0, Lcom/android/settings/R$layout;->provision_spinner_item:I

    invoke-direct {p4, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 31
    sget p1, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_dropdown_item:I

    invoke-virtual {p4, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 32
    invoke-virtual {p0, p4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
