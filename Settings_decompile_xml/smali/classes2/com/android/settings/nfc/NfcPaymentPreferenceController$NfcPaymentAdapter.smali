.class Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;
.super Landroid/widget/BaseAdapter;
.source "NfcPaymentPreferenceController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcPaymentPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcPaymentAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/nfc/NfcPaymentPreferenceController;Landroid/content/Context;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string p1, "layout_inflater"

    .line 302
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 1

    .line 396
    iget-boolean v0, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-nez v0, :cond_0

    .line 397
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-static {p0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->-$$Nest$fgetmPaymentBackend(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Lcom/android/settings/nfc/PaymentBackend;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    .line 398
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 397
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz p0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItem(I)Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->getItem(I)Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 330
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 332
    iget-object p2, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/settings/R$layout;->nfc_payment_option:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 334
    new-instance p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;-><init>(Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder-IA;)V

    .line 335
    sget v2, Lcom/android/settings/R$id;->button:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 337
    sget v2, Lcom/android/settings/R$id;->text1:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    .line 338
    sget v2, Lcom/android/settings/R$id;->text2:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    .line 339
    sget v2, Lcom/android/settings/R$id;->content:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->contentView:Landroid/view/View;

    .line 341
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;

    .line 347
    :goto_0
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->this$0:Lcom/android/settings/nfc/NfcPaymentPreferenceController;

    invoke-static {v2}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->access$000(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    .line 348
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 350
    iget-object v1, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 351
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-boolean v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 354
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 355
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->contentView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->content:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 367
    iget-object p1, p3, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter$ViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 383
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 384
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 391
    sget v0, Lcom/android/settings/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 392
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    return-void
.end method

.method public updateApps([Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->appInfos:[Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 309
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
