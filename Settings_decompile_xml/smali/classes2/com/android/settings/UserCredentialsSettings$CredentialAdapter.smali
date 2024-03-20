.class Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CredentialAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/UserCredentialsSettings$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAYOUT_RESOURCE:I


# instance fields
.field private isNightMode:Z

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Landroid/view/View$OnClickListener;

.field private mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 407
    sget v0, Lcom/android/settings/R$layout;->user_credential_preference:I

    sput v0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->LAYOUT_RESOURCE:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/view/View$OnClickListener;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 418
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mItems:Ljava/util/List;

    .line 420
    iput-object p2, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 421
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 422
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string/jumbo p2, "uimode"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mUiModeManager:Landroid/app/UiModeManager;

    .line 424
    invoke-static {p3}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->isNightMode:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 406
    check-cast p1, Lcom/android/settings/UserCredentialsSettings$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->onBindViewHolder(Lcom/android/settings/UserCredentialsSettings$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/UserCredentialsSettings$ViewHolder;I)V
    .locals 5

    .line 454
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$Credential;

    sget v1, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->LAYOUT_RESOURCE:I

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/UserCredentialsSettings;->getCredentialView(Lcom/android/settings/UserCredentialsSettings$Credential;ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 455
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 456
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 406
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/UserCredentialsSettings$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/UserCredentialsSettings$ViewHolder;
    .locals 3

    .line 431
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 433
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$ViewHolder;

    sget v1, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->LAYOUT_RESOURCE:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/UserCredentialsSettings$ViewHolder;-><init>(Landroid/view/View;)V

    .line 435
    iget-boolean p1, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->isNightMode:Z

    if-eqz p1, :cond_0

    .line 436
    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 437
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    sget p1, Lcom/android/settings/R$attr;->preferenceItemBackground:I

    invoke-static {p0, p1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 438
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object p0, p0, Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 441
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    sget p1, Lcom/android/settings/R$attr;->preferenceItemBackground:I

    invoke-static {p0, p1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 442
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    new-array p2, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 444
    invoke-interface {p0, p1, p2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const p1, 0x3da3d70a    # 0.08f

    const/4 p2, 0x0

    .line 445
    invoke-interface {p0, p1, p2, p2, p2}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-array p2, v2, [Lmiuix/animation/base/AnimConfig;

    .line 446
    invoke-interface {p0, p1, p2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :goto_0
    return-object v0
.end method
