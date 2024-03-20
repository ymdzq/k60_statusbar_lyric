.class public Lcom/android/settings/vpn2/VpnSpinner;
.super Landroid/widget/FrameLayout;
.source "VpnSpinner.java"


# instance fields
.field entries:[Ljava/lang/CharSequence;

.field mLayout:Landroid/widget/LinearLayout;

.field mSpinner:Lmiuix/appcompat/widget/Spinner;

.field mTextView:Landroid/widget/TextView;

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn2/VpnSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/vpn2/VpnSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/vpn2/VpnSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 47
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    sget-object v0, Lcom/android/settings/R$styleable;->VpnSpinner:[I

    invoke-virtual {p4, p2, v0, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 50
    :try_start_0
    sget p3, Lcom/android/settings/R$styleable;->VpnSpinner_spinner_title:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/vpn2/VpnSpinner;->mTitle:Ljava/lang/String;

    .line 51
    sget p3, Lcom/android/settings/R$styleable;->VpnSpinner_spinner_entries:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/vpn2/VpnSpinner;->entries:[Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/VpnSpinner;->initView(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception p0

    .line 53
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    throw p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->vpn_spinner:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    sget v1, Lcom/android/settings/R$id;->spinner_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSpinner;->mTextView:Landroid/widget/TextView;

    .line 61
    sget v1, Lcom/android/settings/R$id;->right_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSpinner;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 62
    sget v1, Lcom/android/settings/R$id;->spinner_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSpinner;->mLayout:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSpinner;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSpinner;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSpinner;->entries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_layout_integrated:I

    const v2, 0x1020014    # @android:id/text1

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSpinner;->entries:[Ljava/lang/CharSequence;

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 67
    sget p1, Lcom/android/settings/R$layout;->miuix_appcompat_simple_spinner_dropdown_item:I

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSpinner;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSpinner;->mLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSpinner;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/vpn2/VpnSpinner;->setSpinnerDisplayLocation(Landroid/view/ViewGroup;Lmiuix/appcompat/widget/Spinner;)V

    return-void
.end method


# virtual methods
.method public getPrompt()Ljava/lang/CharSequence;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSpinner;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSpinner;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedItemPosition()I
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSpinner;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    return p0
.end method

.method public getSpinner()Lmiuix/appcompat/widget/Spinner;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSpinner;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    return-object p0
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSpinner;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSpinner;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSpinner;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public setSpinnerDisplayLocation(Landroid/view/ViewGroup;Lmiuix/appcompat/widget/Spinner;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 107
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setLongClickable(Z)V

    .line 108
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setContextClickable(Z)V

    .line 110
    new-instance v0, Lcom/android/settings/vpn2/VpnSpinner$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/vpn2/VpnSpinner$1;-><init>(Lcom/android/settings/vpn2/VpnSpinner;Landroid/view/ViewGroup;)V

    invoke-virtual {p2, v0}, Lmiuix/appcompat/widget/Spinner;->setOnSpinnerDismissListener(Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;)V

    .line 117
    new-instance v0, Lcom/android/settings/vpn2/VpnSpinner$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/vpn2/VpnSpinner$2;-><init>(Lcom/android/settings/vpn2/VpnSpinner;Lmiuix/appcompat/widget/Spinner;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-void
.end method
