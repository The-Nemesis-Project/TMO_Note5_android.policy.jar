.class Lcom/android/internal/policy/impl/PhoneWindow$FloatingMenuButton;
.super Landroid/widget/ImageButton;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatingMenuButton"
.end annotation


# instance fields
.field private mIsViewInTransparentRegion:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5604
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 5602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$FloatingMenuButton;->mIsViewInTransparentRegion:Z

    .line 5604
    return-void
.end method


# virtual methods
.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 3
    .param p1, "r"    # Landroid/graphics/Region;

    .prologue
    .line 5608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$FloatingMenuButton;->mIsViewInTransparentRegion:Z

    .line 5609
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public isViewInTransparentRegion()Z
    .registers 2

    .prologue
    .line 5613
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$FloatingMenuButton;->mIsViewInTransparentRegion:Z

    return v0
.end method
