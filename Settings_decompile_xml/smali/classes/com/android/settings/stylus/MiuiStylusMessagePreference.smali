.class public Lcom/android/settings/stylus/MiuiStylusMessagePreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "MiuiStylusMessagePreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMessageSource:I

.field private mMessageView:Lmiuix/miuixbasewidget/widget/MessageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/android/settings/stylus/MiuiStylusMessagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/stylus/MiuiStylusMessagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lcom/android/settings/stylus/MiuiStylusMessagePreference;->mMessageSource:I

    .line 30
    sget p2, Lcom/android/settings/R$layout;->stylus_pen_message_layout:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p2, 0x0

    .line 31
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 32
    iput-object p1, p0, Lcom/android/settings/stylus/MiuiStylusMessagePreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 38
    sget v0, Lcom/android/settings/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/miuixbasewidget/widget/MessageView;

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiStylusMessagePreference;->mMessageView:Lmiuix/miuixbasewidget/widget/MessageView;

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/MessageView;->setClosable(Z)V

    .line 40
    iget-object p1, p0, Lcom/android/settings/stylus/MiuiStylusMessagePreference;->mMessageView:Lmiuix/miuixbasewidget/widget/MessageView;

    new-instance v0, Lcom/android/settings/stylus/MiuiStylusMessagePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/stylus/MiuiStylusMessagePreference$1;-><init>(Lcom/android/settings/stylus/MiuiStylusMessagePreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 48
    iget p1, p0, Lcom/android/settings/stylus/MiuiStylusMessagePreference;->mMessageSource:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusMessagePreference;->mMessageView:Lmiuix/miuixbasewidget/widget/MessageView;

    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusMessagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/miuixbasewidget/widget/MessageView;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setText(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/android/settings/stylus/MiuiStylusMessagePreference;->mMessageSource:I

    .line 55
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
